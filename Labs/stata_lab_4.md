# Laboratory 4 - Logical Operators and if

We are going to learn Stata logical operators and the subcommand "if". We will use the logical operators to perform the same commands that you did previously. However, now we will use them to do tables, histograms and density plots for subgroups. We are going to use our two datasets to create subset/subgroups/subsamples.

## Logical Operators and if - Tables

Before using the logical operators available in Stata, let's list them:

Equal: == 

(Hey, we need to use two equal symbols whenever "equal" is a logical operator!)

Not equal: != 
Or: | 
And: &
Greater than: >
Equal or greater than: >=
Lesser than: <
Equal or lesser than: <=

These operators can be used in almost every command available in Stata. 

Normally, we use them with the subcommand "if". It is a subcommand used to apply a condition (or criterion). When we add "if" to a command, Stata will apply the especified condition before executing the main command.

The subcommand "if" is used in a command after our variable(s) of interest. For instance, if we want to apply a condition
before running the command tabulate, it will look like:

```
tabulate variable if var_condition==value [,options]
```

Where "variable" is our variable of interest, "var_condition" is the variable that
we are using to establish a condition, "==" is our logical operator (it could be
any other operator), and "value" is a value for our "var_condition".

The subcommand "if" is a very poweful tool and is used in almost every analysis. 
Let's give a look at some empirical examples.

Let's start with Latinobarometer data for Brazil (Latinobarometro_2015_eng_BR.dta file). By now you probably know how to open the data. We are going to use the variable "P15N" that we utilized previously.

```
codebook P15N
```

Ín this question respondents where asked "Do you think democracy in Brazil has...?". There are 3 different answers available, besides "Don't Know" and "No Answer". Let's build a frequency table with these variable:

As we are not interested in those observations in which the respondent answered "Don't know" and "No Answer", let's recode those values as missing values.

```
recode P15N (-2/-1=.)
```

Let's build a frequency table with these variable:

```
tabulate P15N
```

Stata produced a pretty nice table on what Brazilians think about their democracy. But, we can ask: do women and men have similar opinions about Brazil's democracy? The subcommand "if" can help us to answer this question. Look at the sequence below and try to understand what is going on:

```
tabulate sexo
tabulate sexo, nolabel
tabulate P15N if sexo==1
tabulate P15N if sexo==2
```

Now, we have one table for women (sexo==2) and another for men (sexo==1). Later in this class, we are going to learn how to build a single table that can replicate the information produced by these two tables that we generated  by using "if". For now, let's try a more complex example.

For instance, we might want to know what people who answered that the income that they receive is sufficient
to suit their needs think about Brazil's democracy. The variable that we are going to use to produce our subset(or var_condition) is the variable S10ICC12. Let's observe how this variable is distributed.

```
tabulate S10ICC12
tabulate S10ICC12, nolabel
```

By looking the tables, we can see that our cases of interest have values equal 1 and 2 (people who answered that are satisfied). Now, we can build our table.

```
tabulate P15N if (S10ICC12==1) | (S10ICC12==2)
```

As you can observe, we are using the operator |, which means that we are asking Stata to tabulate the variable P15N only for observations that have the variable S10ICC12 equal to 1 or 2. We can even complicate the condition a little bit more. 

For now, we have our tables by sex and income satisfaction. We might be interested to know what women who are satisfied with their income think about Brazil's democracy. We can produce a table to answer this question by combining our both former criteria. Let's try it.

```
tabulate P15N if (sexo==2) & (S10ICC12==1) | (S10ICC12==2) 
```

In this command line, we are asking Stata to run the tabulate command only for
women (sexo==2) that are satisfied with their income (S10ICC12==1 or S10ICC12==2)

Cool, rigth?

## Logical Operators and if - Tables - Exercise

It's time for you to work by yourselves.

Work in groups of 2 to 4, please! Don’t do it by yourself! Try to figure out how to solve any problems discussing it with
your group. Learn by doing (aka learn by making a lot of mistakes). It is ok to cheat and check how the other groups are doing their
activity. Just ask them nicely and don’t bother them. Leo and Victor are here to help you. Ask questions!

Use the Latinobarometro_2015_eng.dta and answer the following questions.

a) Pick two variables that you may think that are related. Build a frequency table using one of them to create a subsample.

b) Choose a third variable that you are interested and that you might think that is related to the other two variables. Build a table using two variables to produce a subsample. 

c) Pick a fourth variable that you are interested. Recode this variable into a dichotomous variable (a variable that only has two values). Use this new variable as our criterion to build a table.

## Histograms and densities

As we pointed, we can use logical operators with almost every command in Stata. Now that we have explored how to generate tables using subsets, let's try something similar with graphs.

Let's use our Data about California Schools (api13_school_data.dta)

Let's look at the histogram of 2013 API (Growth):

```
histogram api13
```

We have our histogram for our full sample. But, we may want to know how the variable distribution is for those schools that had a 2012 API was at least 800 (and exclude the missing value cases). In this case, we can use the following command line:

```
histogram api13 if api12 >= 800 & api12 != .
```

We can observe the distribution in more details. Now it is possible to notice that some schools had a large decrease in their results. We could also recode the variable api12 and generate a new variable using the command recode. 

Note: we are using the expression "& api12!=." because there are some observations with missing values for the variable "api12" that Stata would include in the graph. It would occur because Stata does not evaluate missing cases as numbers (actually, they aren't number.  They are only missing data).

```
recode api12 (0/799=0) (799/1000=1), gen(api12_cat)
histogram api13 if api12_cat==1
```

We can also combine two (or more) criteria. Let's imagine that you want to know how is the 
2013 API for schools in which more than 50% of the parents have Graduate School and 
that are more than 5% of students with Disabilities.

```
histogram api13 if grad_sch>50 & p_di>5
```

It's also possible to produce a density plot using these criteria.

```
kdensity api13 if grad_sch>50 & p_di>5
```

## Histograms and densities - Exercise

Your turn. Work in groups of 2 to 4, please! Don’t do it by yourself! Try to figure out how to solve any problems discussing it with
your group. Learn by doing (aka learn by making a lot of mistakes). It is ok to cheat and check how the other groups are doing their activity. Just ask them nicely and don’t bother them. Leo and Victor are here to help you. Ask questions!

a) Go back to California Department of Education dataset. Observe the distribution of the "api13" variables (api13, aa_api13, hi_api13, wh_api13 and sd_api13), which are the 2013 test performance for different sets of students. Produce a histogram for some of these variables (at least 3) using the variable "Number of Black or African American Included in API" to produce a subset.

b) Recode the variable "Number of Black or African American Included in API" in a dichotomous variable (use the command recode that you learned yesterday). Produce density plots for the variables that you chose in the exercise "a" using your new variable to create a subset.

