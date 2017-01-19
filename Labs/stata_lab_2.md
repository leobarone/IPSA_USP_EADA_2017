# Laboratory 2 - Distributions: frequency tables, histograms and densities

Authors: [Leonardo Sangali Barone] (leonardo.barone@usp.br) and [Patrick Silva] (leonardo.barone@usp.br)

## Objective

In this laboratory we are going to learn the basics of data description. We will produce frequency tables, histograms and densities. We will use 2 different datasets. We will use 2 different datasets, the 2013 Growth Academic Performance Index (API) Data File and the 2011 Latinobarometer.

## Describe the data and get familiarized

Let's start with Latinobarometer data for Brazil (Latinobarometro_2011_eng_BR.dta file). By now you probably now how to open the data. Get yourself familiarized with the data by the describing the dataset before moving on.

## Frequency Tables - One variable

Let's start by looking at the question P15N at the Latinobarometer.

```
codebook P15N
```

Ín this question respondents where asked "Do you think democracy in Brazil has...?". There are 3 different answers available, besides "Don't Know" and "No Answer". Let's build a frequency table with these variable:

```
tabulate P15N
```

Easy, right?

Can you tell what is the percentage of Brazilians that, in 2011, think that Brazilian democracy has worsened?

Can you tell what kind of variable this is?

We can use some optionals with the "tabulate" command. For example, if we want to take a quick look at the distribution, we can use:

```
tabulate P15N, plot
```

If we want to take a look at the numerical values of the categories

```
tabulate P15N, nolabel
```

Everytime you want to investigate what optionals you can use with a command go to the help file

```
help tabulate
```

Take a minute to undertand the help file.

(wait, don't rush, look at it again)

Great! Let's move forward

## Frequency Tables - Exercise

It's time for you to work by yourselves.

Work in groups of 2 to 4, please! Don’t do it by yourself! Try to figure out how to solve any problems discussing it with your group. Learn by doing (aka learn by making a lot of mistakes). It is ok to cheat and check how the other groups are doing their activity. Just ask them nicely and don’t bother them. Leo and Victor are here to help you. Ask questions!

Download the 2011 Latinobarometer dictionary from the course materials. Get used to it by examining the variables on the dataset and by reading  the dicitionary

a) Choose five categorical or ordinal variables at the Latinobarometer dataset. Try to choose variables that you believe that are related to each other. In the future we are going to formulate hypothesis on how these variables might be connected.

b) Make one table for each of the variables and analyse the results.

c) Think (just think, but don't do it) if you would like to make some changes in those variables by reorganizing the variables. Try (mentally, not in Stata) to reduce the number of categories in the variables you picked. Takes notes, because we are going to learn how to do it in the near future.

d) Take a look at P76ST. Respondents are asked has self-positioni themselves on one left-right ideological scale, which ranges from 0 (left) to 10 (right). Make a frequency table of this variable. As you will notice from the data set, there were a fairly number of respondents who did not wish to rank themselves on this question.

e) What type of variable is this one (continuous, discrete, ordinal or nominal)? Please justify your answer.

## Histograms and densities

Ordinal and categorical data are best represented by tables. You can plot them, but usually a simple frequency table is sufficient to observe the distribution of the data. The same is not true for continuous (or "quasi-continuous" variables).

It is ok to do a table with the ideological scale, as you just did in your exercise. But what happens if we do a frequency table with the age of the respondents? Note: "edad" means "age" in Spanish.


```
tabulate edad
```

Not very useful, right. Let's do something even worse: let's tabulete the inicial time of the interview for each respondent

```
tabulate ini
```

(Use the "Break" button to stop -- sorry for the trick)

When we are dealing with truly continuous variable, it can assume so many unique values that we cannot represent the it properly in a table. We would need to recode the variable to be able to tabulate it. So, instead of using a table to represent it, we can use a graph. Histograms and density graphs are extremely useful in these situations. Let's look at the histogram of age:

```
histogram edad
```

Much, much better, right? How about the initial time of the interview

```
histogram ini
```

Alternatively, we can use densities (densities are beautiful in my opinion <3!)

```
kdensity edad
```

Easy, right?

## Histograms and densities - Exercise

Your turn. Work in groups of 2 to 4, please! Don’t do it by yourself! Try to figure out how to solve any problems discussing it with your group. Learn by doing (aka learn by making a lot of mistakes). It is ok to cheat and check how the other groups are doing their activity. Just ask them nicely and don’t bother them. Leo and Victor are here to help you. Ask questions!

As you may have notice by now, the Latinobarometer is full of discrete variables and the California School Performance dataset full of continuous variables. Use the dictionary to understand the variables.

a) Go back to California Department of Education dataset. (Do you remember how to do it?) Observe the distribuion of the "api13" variables (api13, aa_api13, hi_api13,  wh_api13 and sd_api13), which are the 2013 test performance for different sets of students.

b) Make histogram and densities for these variables.

c) Can you observe differences between african-american, hispanic, white and socioeconomically disadvantaged students just by looking at the graphics?

d) Make a density plot for the average education of parents (of each school)
