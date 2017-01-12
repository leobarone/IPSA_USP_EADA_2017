# Laboratory 5 - Table of summary statistics

We are going to learn the basics of how to manage variables. We will produce frequency tables, histograms and densities. We will use 2 different datasets. We will use 2 different datasets, the 2013 Growth Academic Performance Index (API) Data File and the 2015 Latinobarometer.

## Table with summary statistics

Please, open the California Deparment of Education Dataset. We can very quickly summarize descriptive statistics of a randon variable
by using the command "tabstat". For example:

```
tabstat api13
```

We can do it for more than one variable:

```
tabstat api13 avg_ed meals
```

And we can get different descriptive statistics of each variable by
setting the optionals:

```
tabstat api13, stat(mean sd min max)
```

If we want more than one statistic for more than one variable we can do the following

```
tabstat api13 avg_ed meals, stat(mean sd  min max)
```

Great, isn't it?

# Table with summary statistics - Exercise

Compare the performance of african-american, hispanic and white students using the tabstat command. Make hypothesis about the difference of means and observe the results. In the future we will see if those differences are "statistically significant".

## Table with summary statistics - Dummy variables

It doesn't make much sense to use a table of summary statistics for categorical or ordinal variables, since the mean or standard deviation of the numerical codes are meaningless

However, what happens if we take the mean of a binary variable, for example, coded as 0 and 1 (also know as dummy variable)?

Let's test. We will recode the variable "not_hsg", which indicates the percentage of parents who doesn't have a high school degree. Before recoding it into 0 (high number of parents who didn't graduate at high school) and 1 (low number of parents who didn't graduate at high school, hence, more educated), let's exam the variable

```
summarize not_hsg, detail
kdensity not_hsg
```

We are going to use the median as a threshold, but you can choose other values if yoy think there's a better way to distinguish schools using this variable.

```
recode not_hsg (0/16 = 1 "High") (16/100 = 0 "Low"), gen(parent_ed)
```

Let's tabulate our new variable:

```
tabulate parent_ed 
```

And observe the tabstat command applied to it:

```
tabstat parent_ed, stat(mean sd)
```

Take a few minutes to gess what does the mean means (sic). Hint: look at the tabulate command output for that variable.

The mean of a binary variable indicates the proportion of "ones" in that variable. In other words, it indicates the frequency of the category coded was one.

One advantage of working with binary variables is that we can treat them, mathematically speaking, in the same way we treat continous variables. That's because the expected values (mean, variance, etc) are meaningfull.

## Table with summary statistics - Your turn

(You can read this exercise, skip, and go back to it after you stop using the California Department of Education Dataset if you wish)

Go back to the Latinobarometer dataset. Recode your choosen variables into two categories coded as 0 and 1. Explore them using the tabstat command. Save your code and come back to this dataset later.

## Table with summary statistics - Summary by Group

Open the California Department of Education dataset (again). Let's say, now, we want to observe the mean performance of different racial groups BY the parent's education, which is now coded into only two different categories.

We could using the conditional "if" to acomplish the task:

For low education parents:

```
tabstat aa_api13 hi_api13 wh_api13 if parent_ed == 0, stat(mean sd)
```

For high education parents: 

```
tabstat aa_api13 hi_api13 wh_api13 if parent_ed == 1, stat(mean sd)
```

Not very neat, right?

A better alternative is to use the "by" clause in the tabstat command. Look how it works (for one variable for now)

```
tabstat aa_api13, by(parent_ed) stat(mean sd)
```

Cool, right? And very, very powerful. What this tables shows us it that, for african american students, schools (or students on those schools) in which parents are more educated perform, ON AVERAGE, 81 point better then the other schools.

We could do the same for a more boring variable, but that already has 3 categories, which is "charter" (type of school):

```
tabstat aa_api13, by(charter) stat(mean sd)
```

Or even by school school county:

```
tabstat aa_api13, by(cname) stat(mean sd)
```

Finally, we could do the table for a list of variables. In these cases, the descriptive statistcs are organized in cells (for example, mean on top and standard deviation on the botton of the cell)

```
tabstat aa_api13 hi_api13 wh_api13, by(parent_ed) stat(mean sd)
```

## Table with summary statistics - Summary by Group - Now the challenge begins

You are going to work with the two datasets. In the California Department of Education dataset I would like you to recode one of the following variables -- meals, avg_ed or some_col -- into categorical variables and observe test performances of each racial group BY the recoded variable. The recoded variable does not have to be recoded as dummy (because the variable is not being
summarized). Analyse it. Don't worry if you think it is too challenging now. Ask for help.

After you finish working with this dataset, go to Latinobarometer. Investigate the dummy variables you recoded BY ANY OTHER VARIABLE in the dataset you think is related to the recoded variable. Make hypothesis about the differences in proportions.
