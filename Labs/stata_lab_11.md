# Laboratory 11 - Confidence intervals and hypothesis test

Authors: [Leonardo Sangali Barone] (leonardo.barone@usp.br) and [Patrick Silva] (leonardo.barone@usp.br)

## Objective

We are going to learn the basics of confidence intervals and hypothesis test. We will use 2 different datasets. We will use 2 different datasets, the 2013 Growth Academic Performance Index (API) Data File and the 2015 Latinobarometer.

## Confidence intervals

You might not have noticed, but all the informatiion that is necessary to produce a confidence interval for a continuous variable, the mean and the standard deviation, was already available at the summary of the the variable:

```
summarize api13
display 783.7786 - 1,96 103.7396  
display 783.7786 + 1,96 103.7396  
```

Do you remember where the number 1.96 comes from? If not, go back to the readings or presentations.

Still, you can use the "ci" command in order to observe the confidence interval of several variables:

```
ci api13
ci api13 wh_api13 hi_api13
```

Remember that confidence intervals are useful when we want to know the interval that the population parameter (in this case, the mean), is  likely to lie. The correct interpretation for a 95% confidence interval is: if we take several samples, the true parameter will lie in the confidence interval of 95% of the samples. It is wrong to say that "the probability of the true parameter lying within the interval is 95%" or equivalente statements. Can you understand this difference?

We can also use confidence interval for proportions or, more precisely, for binomial variables. For example, let's recode the fre meals percentage variable, "meals", as a 0 and 1 variable

```
recode meals (0/50 = 0 "Small # of Free Meals") (50/100 =  1 "Great # of Free Meals"), gen(fm)
```

The confidence interval for this variable is

```
ci fm, binomial 
```

Easy right? You can train before you move on.

## Hypothesis test

Hypothesis test is a very powerful tool for science making. With this tool we can test if simple statement about the data holds.Before we move on, however, try to understand the difference between the two statements below (in terms of how the data is organized)

The first one is "the number of students with free meals doesn't is not related to the school performance on the standardized test"

School performance is one variable in our dataset: "api13" Percentage of free meals, another (we will use the recoded categorical variable for now): fm

So what we need to do is to use the free meal variable to separate the collum/variable of performance into two parts and compare the mean of these two parts.

We can do it with tables or box plots to visualize the DIFFERENCE OF MEANS between the two groups. Pay attention to the expression DIFFERENCE OF MEANS

```
tabulate fm
tabstat api13, by(fm) stat(mean sd)
graph box api13, by(fm)
```

Notice that the groups can have different sizes. So far so good? If not, ask for help. We can suspect that the statement might be wrong, since the groups seem to have DIFFERENT MEANS.

Now, we are going to observe a second statment: "the measurement for white students performance is, on average, equal to to the measurement for hispanic students performance".

Now, what we are doing is to compare the differences, IN EACH SCHOOL, of two different measurments, one for white students and the other one for hispanic students. Our statement tells us that the MEAN OF THE DIFFERENCE between the two measurements is, on average, zero.

We can, again, use tables and box plots to explore this statement:

```
summarize wh_api13 hi_api12
graph box wh_api13 hi_api12
```

We could even generate a variable which is the difference between the two measurements and summarize it:

```
generate diff = wh_api13 - hi_api13
summarize diff
```

It looks like that our is statement is wrong, because the MEAN OF THE  DIFFERENCE seems to be different from zero.

Before you move on, it is crucial that you understand that these two problems are different. In the first one, we separete one variable into two groups by 
using a group variable. In the second one, we compare two variables.

Don't move forward if you didn't get the difference. Ask for help.

To perform both test is quite easy. To test if DIFFERENCE OF MEANS is zero  we use the "ttest" command with the option by:

```
ttest api13, by(fm)
```

To test if the MEAN OF THE DIFFERENCE is equal zero we use the "ttest" command with the expression being tested (one variable is equal the other variable) right after the command

```
ttest wh_api13 = hi_api12
```

Did you notice that the output shows, right below the table, the hypothesis that is being tested?

Now, try to interpret the test.

## Hypothesis test - Your turn

Formulate at least one of the each of the tests above (difference of means and mean of the difference) using the dataset. Interpret it.

## Hypothesis test for proportions

We can do exactly what we did for continuous variables with proportions. Go back to Latinobarometer. There are basically no continuous variables at the survey. Stiil, we can use hypothesis test to test proportions.

Let's start by recoding variables in order to performa a difference of proportion test. We will test if the proportions of people who think that the income distribution is Fair is equal among who approves and who disapproves Dilma's goverment. Check the code for the recoding below:

```
tabulate P12ST
tabulate P12ST, nolabel
recode P12ST (-1 = . ) (1/2 = 1 "Fair") (3/4 = 0  "Unfair"), gen(distrib)
tabulate distrib
```

```
tabulate P36ST
tabulate P36ST, nolabel
recode P36ST (-1 = . ) (1 = 1 "Approves Dilma") (2 = 0  "Disapproves Dilma"), gen(approval)
tabulate approval
```

We can exam the relationship between variables before we perform the test: 

```
tabulate approval distrib, row
tabstat distrib, by(approval) stat(mean sd)
```

And then run the test:

```
prtest distrib, by(approval)
```

Quite similar to what we did before, isn't it? Now, try to interpret it.

Finally, we are going to perform a mean of the difference test for  proportions by using the opinion of respondents about USA and Venezuela

First, we exam and recode the variables:

USA

```
tabulate P44ST_A
tabulate P44ST_A, nolabel
recode P44ST_A (-2/-1 = .) (1/2 = 1 "Good opinion") (3/4 = 0 "Bad opinion"), gen(usa)
```

Venezuela:

```
tabulate P44ST_G
tabulate P44ST_G, nolabel
recode P44ST_G (-2/-1 = .) (1/2 = 1 "Good opinion") (3/4 = 0 "Bad opinion"), gen(ven)
```

We can compare the proportions with a table before performing the test:

```
tabstat usa ven, stat(mean sd)
```

And then run the test:

```
prtest usa = ven
```

Also quite similar to what we did before, isn't it? Now, try to interpret it.

## Hypothesis test for proportions - Your turn

Formulate at least one of the each of the tests above (difference of proportion and mean of the proportion) using the dataset. Interpret it.
