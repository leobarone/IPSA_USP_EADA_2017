# Laboratory 8 - Generating new variables and replacing values

We are going to learn two new commands in Stata: generate and replace. The first one is used to create new variables in our dataset and the second and is used to substitute (replace) values in our dataset. We will produce frequency tables, histograms and densities. We will use 2 different datasets. We will use 2 different datasets, the 2013 Growth Academic Performance Index (API) Data File.

## Generate

Please, open the California Deparment of Education Dataset Let's start with generate. When we are working with a new dataset we usually we want to generate a new variable that suits our problems. This new variable can be a function of our variables, a variable that contains only missing values, or a copy of other variables.

If we want to generate a variable with missing values, we can do the following:

```
gen missing = .
```

Where "missing" is the name of our new variable, and "." represents missing values.

If we want to generate a copy of our original variable, we type:

```
gen copy_api13 = api13
```

This command will produce a perfect copy of our original variable. It can be very useful when we want to perform some transformation in our variable and preserve the original one. 

We can also generate variables that are the product of some expression. For instance, in our dataset, we have variables on the percentage of parents that have different educational degrees (not_hsg, hsg, some_col, col_grad, and grad_sch). We may be interested in check if the sum those variables is equal to 100%. To do it, we can use the following command line: 

```
gen check_education = not_hsg + hsg+some_col + col_grad + grad_sch
```

Now, let use codebook to observe our new variable:

```
codebook check_education
```

Ops! We discovered that our dataset has mistakes! In this case, we can't do
anything about it because we don't have the original data. But, it is good to now it,
since now we can inform our reader about our dataset problems

## Replace

The command replace is similar to recode, but there are some important differences. First, if we use replace to recode a variable, we can't preserve our original variable. The only way to do it is by using "generate" first and creating a copy of our variable. The second, and more interesting one, is that with replace we can recode a variable using one or more variable as a condition. Let's start with the simple recodification.

We want to recode the variable api12, but as replace doesn't have the option to preserve our original variable, let's start by generating a copy of our original variable:

```
gen copy_api12 = api12
```

Let's look our original variable and it's copy:

```
summarize api12 copy_api12
```

So, they are equal. Now, we can recode our variable.

```
replace copy_api12 = 0 if (copy_api12>=0) & (copy_api12<=500)
replace copy_api12 = 1 if (copy_api12>500) & (copy_api12<=750)
replace copy_api12 = 2 if (copy_api12>750) & (copy_api12<=1000)
```

Since we changed our variable content, let't rename it.

```
rename copy_api12 cat_api12
```

Now, let's observe our new variable.

```
tabulate cat_api12
```

Let's do something a little bit different know. We want to generate a dichotomous variable in which the value 0 will represent
schools the percentage of parents that have college and gran school degree is less than 50% and 1 will represent those schools in which at least 50% of the parents have college or gran school degrees.

First, let's generate our new variable. It will contain only missing values.

```
gen educ_schools = .
```

Now, that we have our variable, we can assign values to it. We are going to use the command replace. Let's do it!

```
replace educ_schools = 0 if (col_grad<50) & (grad_sch<50)
replace educ_schools = 1 if (col_grad>=50) | (grad_sch>=50)
```

We can check if we recoded right our variable using the command list. Using list, Stata will list the values of all variable for all observations in our dataset. As we are interested only on three variables. We can specify it, by typing:

```
list col_grad grad_sch educ_schools
```

## Generate and Replace - Exercise

a) Open the California Department of Education dataset. Choose three variables. Generate a copy of them. Recode using replace one of these variables using other variables as criterion of recodification. 
