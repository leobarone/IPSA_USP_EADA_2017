# Forgotten Laboratory - Two way tables (2 discrete variables)

We are going to learn the basics of two way tables. We will produce frequency tables, histograms and densities. We will use 2 different datasets. We will use 2 different datasets, the 2013 Growth Academic Performance Index (API) Data File and the 2015 Latinobarometer.

## Two-way tables

Let's go back to Latinobarometer data for Brazil (Latinobarometro_2011_eng_BR.dta file).

In the first laboratories we have described variables using tables and histograms. We have worked with only one variable at a time. It's is time to move forward and work with two variables at the same time. We will start by building two-way tables with the variables.

For example, we can take a look at questions P15N (opinion on democracy status) and sex (social class)

```
codebook P15N sex
tabulate P15N sex
```

Hummmm. Interesting. But is it easy to read? Not really. The problem is that we only have the frequency of the combinantion of categories, but not the relative frequencies. We can check the relative frequencies by using options. Frequencies can be relative to the total number of observations or tho the total in one of the margins (rows or collumns).

Compare the differences (hint: look at where the relative frequencies sum 100)

```
tabulate P15N sex, row
tabulate P15N sex, col
tabulate P15N sex, cell
```

Easy, right?

Breath Deeply: in your opinion, are these two variables independent of each other? In other words: Do women and men vary in terms of opinion on the Brazilian democracy? Justify your answer!

## Two-way tables -- Your turn

Work in groups of 2 to 4, please! Don’t do it by yourself! Try to figure out how to solve any problems discussing it with your group. Learn by doing (aka learn by making a lot of mistakes). It is ok to cheat and check how the other groups are doing their activity. Just ask them nicely and don’t bother them. Leo and Victor are here to help you. Ask questions!

Remember that you recoded some Latinobarometer variables? Great! It's time to use them.

a) Before you move on, be sure these variables are properly recoded. Change the name 
of the variables if you think they are not intuitive (like questions codes).

b) Build 2-way tables with the variables you have recoded. Try to make tables that are,
in the first moment, theoretically interesting to you. Make up some hypothesis on how
these two variables are related to wch other.

c) Observer the empirical joint distribuition of the two variables. Are the variables you
worked with independent of each other? Justify your answer. 

d) Recode the variable "ideology" (P76ST) into 2 categories: left and right. Take the decisions
you need to recode it properly.

e) Check if ideology is indepedent of the variables you have chosen for your exercise
by building two-way tables.