# Laboratory 9 - Two way graphs and correlation

We are going to learn the basics of how to manage variables.We will produce frequency tables, histograms and densities. We will use 2 different datasets. We will use 2 different datasets, the 2013 Growth Academic Performance Index (API) Data File and the 2015 Latinobarometer.

## Correlation

In class, we explored correlation and observed how to represent the joint distribution of two continuous variables. Let's pratice on Stata. We will use the California Department of Education dataset.

First, let's look at the individual distribuion of the variables we are going to work with: api13, api12, aa_api13, hi_api13 and wh_api13.

```
kdensity api13
```

Can you repeat ir for the other variables.

Just by looking at the variables individually, we know nothing about their joint distribuition.

The first clue we can have about joint distributions is the correlation.

```
corr api12 api13
```

Remember that correlation is always a number between -1 and 1. Nice, isn't it? Try to interpret this correlation, considering that api12 is the performance of the students in 2012 and api13 is the performance if the students in 2013.

If you want to look at more than one correlation at a time, you can add more variables to the list

```
corr api13 api12 aa_api13 hi_api13 wh_api13
```

Tricky question: why only the lower part of the table is filled?

## Correlation - Do it yourself

a) Use the corr command to find the 3 variables in the dataset that are highly correlated with api13 BESIDES the "api" variables.

b) Use the corr command to find the 2 variables in the dataset that are not or has low correlation with api13 BESIDES the "api" variables.

## Two-way graphs

Let's see how we plot the joint distribution of two variables, api12 and api13:

```
twoway scatter (api13 api12)
```

Nice, isn't it? A great virtue of the twoway command is that we can overlay different graphs. In the graph above, we choose just to represent a scatterplot. In the graph below we will show both the scatter plot AND a linear fit that represent the relationship between the two variables

```
twoway (scatter api13 api12) (lfit api13 api12) 
```

The linear fit is the regression line of api13 by api12. We will come back to this in the near future.

Finally, in the same way we can look at a couple of correlations at the same time, we can produce a matrix with scatter plots for each pair of variables.

```
graph matrix api13 api12 aa_api13 hi_api13 wh_api13
```

Very cool! You can use this matrix do explore the relationship between the pairs of variables in the dataset, pair by pair.

## Two-way graphs - Your turn

a) Make two-way graphs for the variables you found out in the last exercise. Your graphs should include a linear fit. Compare the variables that correlate high with api13 with the variables thatcorrelate low with api13.

b) Use the graph matrix to explore the relationship of the variables you choose amog each other (not with api13 anymore). Are they correlated with each other? What would you think would be implications of a high correlation among them?
