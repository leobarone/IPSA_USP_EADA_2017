# Laboratory 7 - Comparison between groups and Box-plot graphs

In this quick lab we are going to learn how to build a box-plot in Stata. We will use the 2013 Growth Academic Performance Index (API) Data File in this lab.

## Box-plot

Please, open the California Deparment of Education Dataset. A box-plot graph is one of the most useful graphs that you can learn to do. It presents in a very elegant way our variable distributrion and some of the measures of position (median and percentiles). Before starting, a warning note: box-plot are more useful when we want to display the distribution of a continuous variable. They are not so useful when our variable is a dichotomous or ordinal variable. Let's start!

The command in Stata to build a box-plot is "graph box". Let's use it to our variable api13

```
graph box api13
```

Ugly graph, but very informative. The line in the middle of the box is the median of our variable. It means that half of our observations are less than, aproximally, 793 and half are larger this value. The box itself contains 50%
of our observations. Therefore, the upper hinge of the box represents the third quartile, and the bottom hinge of the box represents the first quartile. The other lines show the upper and the bottom limits of the distribution. But, it doesn't mean that all of observations are between the lines shown in the graph. Box-plots also show observations that are considered outliers. That is, observations that do not fit well in the distribution. There are some formulas available to define what is a outlier. We can check how Stata defines outliers in Stata Manual. Also, in the Stata manual you will find a very good explanation (with figures) of how to interpret box-plots. To see this information, type:

```
help graph box 
```

And click on the name [R] graph box. 

Now, that we know how to do a box-plot and to find information about it. Let's
produce some nice graphs.

One of the best uses of box-plots is to compare distributions. For instance,
if we want to compare the distribution of api13 and api12 we can do a box-plot for 
both variables:

```
graph box api13 api12
```

It is also possible to use box-plots to compare distribution of one or more variables among groups. For instance, we many want to compare the distribution of api13 among schools in which there are not african-american students and schools in which there are african-american students. Our first step is to recode our variable aa_num into two categories. 

```
recode aa_num (0=0) (0/max=1), gen(aa_presence) 
```

Now, that we have our new variable (aa_presence that stands for African-American Presence), we can run the command graph box with the option by() and produce our box-plot:

```
graph box api13, by(aa_presence)
```

Now, let's compare api13 and api12 between groups:

```
graph box api13 api12, by(aa_presence)
```

Great, isn't it?

## Box-plot - Exercise

a) Open the California Department of Education dataset. Let's say, now, we want to observe the performance of different racial groups. Do a box-plot to the variables api13, aa_api13, hi_api13, wh_api13 and sd_api13. What do you observe? How are the distributions? Are they similar?

b) Let's use box-plots to compare between groups. We want to compare the distributions between different levels of the variable Average Parent Education Level.  Recode the variable into two categories and build the box-plots. 
