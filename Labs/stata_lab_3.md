# Laboratory 3 - Renaming, labeling and recoding variables

Authors: [Leonardo Sangali Barone] (leonardo.barone@usp.br) and [Patrick Silva] (leonardo.barone@usp.br)

## Objective

We are going to learn the basics of how to manage variables. We will produce frequency tables, histograms and densities. We will use 2 different datasets. We will use 2 different datasets, the 2013 Growth Academic Performance Index (API) Data File and the 2015 Latinobarometer.

## Renaming variables

Let's go back to Latinobarometer data for Brazil (Latinobarometro_2015_eng_BR.dta file). By now you probably familiarized with the dataset.

The first variables in the dataset have vary intuitive names (even though names are in Spanish) like ciudad (city), tamciud (size of the city), edad (age), sexo (sex), etc. But the essential questions in the survey are named as codes. Why not rename P76ST as "ideology"? Why not do it for the few questions your are interested in?

It is very easy to rename variables on Stata:

```
rename P76ST ideology
```

Done! But be careful. Stata no longer recognize P76STas a variable. It is absolutely meaningless for the software now.

## Renaming variables - Your turn

Quickly rename all the Latinobarometro variables you have tabulated in the last labotory exercise. Use intuitive names and abbreviations. Stata is case sensitive, so "ideology", "Ideology" or "IDEOLOGY" are dinstiguished from each other. If you are going to use 2 words in the variable name (e.g. "ideology" "recode") separate them with underscore ("_", as in "ideology_recoded") or initiate the second (or even third) word with capital letter ("ideologyRecoded").

## Labeling variables

One great virtue of the Latinobarometer dataset is that it comes completely labeled. By label we mean that the variable has a name and a description, the same that you see at the variable windown, and that appears on tables or when you use commands like describe or codebook.

On the other hand the California Department of Education (API) dataset has no label at all. Go back to this dataset.

We will start by labeling four variables: dname, cname, valid and api13. Labeling is also very easy:

```
label var dname "District Name"
label var cname "County Name"
label var valid "Number of Scores included in the 2013 Academic Performance Index (API)"
label var api13 "2013 API (Growth)"
```

We can check the result with the describe command

```
describe dname cname valid api13
```

## Labeling variables - Your turn

Quickly label 5 variables of your choice in the API dataset. Check the online [dictionary] (http://www.cde.ca.gov/ta/ac/ap/reclayout13g.asp) if necessary.

## Recoding variables - Continuous Variables

A great part of the task of a data analyst is to prepare variables for the analysis. You already know how to exam them. It is time you transform them by recoding. We will start by recoding a continuous variable into a ordinal variable. not_hsg represents the percentage of parents who didn't graduate at high school by school in the dataset. Let's take a look at it.

```
summarize not_hsg, detail
kdensity not_hsg
```

Let's generate a new variable, called "parent_low_ed" that will be 0 for schools with a low number of parents who didn't finish high school and 1 for schools with a high number of parents who didn't finish high school. We will choose 32 (the third quartile) as our cutting point

```
recode not_hsg (0/32 = 0) (32/100 = 1), gen(parent_low_ed)
```

Take a minute to look at the syntax (structure) of the command.

(Look again. Breathe).

Tabulate the new variable:

```
tabulate parent_low_ed
```

We will see soon how to label categories (not only variables). One way to do it is to simply add the labels to the recode command. First, let's throw away our new variable with the "drop" command.

```
drop parent_low_ed
```

Now, let's do it again with labels

```
recode not_hsg (0/32 = 0 "High Ed") (32/100 = 1 "Low Ed"), gen(parent_low_ed)
```

Take a minute to look at the syntax (structure) of the command.

Tabulate the new variable:

```
tabulate parent_low_ed
```

Finally, we could have created as many categories we wanted. Let's check how: We will call the new variable parent_low_ed_4, and it will have 4 categories. Read calmly the command below and try to understand it:

```
recode not_hsg (0/5 = 1) (5/16 = 2) (16/32 = 3) (32/100 = 5), gen(parent_low_ed_4)
tabulate parent_low_ed_4
```

Take a minute to look at the syntax (structure) of the command.

## Recoding variables - Continuous - Exercise

Work in groups of 2 to 4, please! Don’t do it by yourself! Try to figure out how to solve any problems discussing it with your group. Learn by doing (aka learn by making a lot of mistakes). It is ok to cheat and check how the other groups are doing their activity. Just ask them nicely and don’t bother them. Leo and Victor are here to help you. Ask questions!

a) label the variables meals and avg_ed.
b) Observe the distribution of these two variables with graphs.
c) Recode them into new variables with two categories.

## Recoding variables - More exercises

Go back now to Latinobarometer (no, I am not joking or messing with you guys -- we are switching datasets for didactical purposes). We will recode discrete variables now.

If you succeded in your last task, it should be ok by now to recode variable P76ST, as known as ideology. Describe it both with a frequency table and a graph and decide how you will recode it (number of categories). Label the categories and tabulate the result.

Obs: have you noticed that, by recoding a variable we are always making it more simple and are loosing information (and variation)? Recoding can be also understood as "grouping values/categories".

## Recoding variables - Discrete
 
We can recode categorical variables in a very similar way using the  "recode" commmand. Take a look on how we can recode S14, regarding social classes. The variable has 5 categories + DN ("Don't Know") and NA  ("No Answer"). Let's look at the numerical values of the categories

```
codebook S14
```

Let's regroup the variable. Take a good look at the command and understand it before moving forward.

```
recode S14 (-1 = .) (-2 = .) (1 = 1 "High") (2 = 1 "High") (3 = 2 "Medium") (4 = 3 "Low")  (5 = 3 "Low"), gen(social_class)
```

Wait!!! What are the dots in the command?!?!? Dots are the Stata symbol for missing values. I decided I was going to recode DKs and NAs as missings and group the other 5 variables into only 3. Did you get it?

Let's check the new variable:

```
tabulate social_class
```

Did you realize missing values are not being tabulated? If we want missings to be shown, we need to choose the option "missing"

```
tabulate social_class, missing
```

## Recoding variables - Discrete - Do it by yourself

Work in groups of 2 to 4, please! Don’t do it by yourself! Try to figure out how to solve any problems discussing it with your group. Learn by doing (aka learn by making a lot of mistakes). It is ok to cheat and check how the other groups are doing their activity. Just ask them nicely and don’t bother them. Leo and Victor are here to help you. Ask questions!

Remember you had planned to recode some Latinobarometer variables in lab 2 (and took notes)? It is time to do it. Recode at least 3 variables.
