# Laboratory 6 - Value labels

## Objective

For now, we have already learned how to label variables (label var command) and how to rename variables (rename command). Sometimes, we also want to label variable values. In this lab, we are going to learn how to do it in Stata. Although many processes in Stata are straighforward, assigning labels to a value isn't. But, don't worry! It is not hard, it is just not as intuitive as the other commands and that we have learned so far. We will use the 2013 Growth Academic Performance Index (API) Data File in this lab.

## Value labels

Open the API dataset. We will assign labels to a new variable that represents different levels of the variable api13. We will use recode to generate our new variable:

```
recode api13 (0/500=0) (500/750=1) (750/1000=2), gen(catapi13)
```

Now that we have our new variable, let's make a frenquency table using the command "tabulate":

```
tabulate catapi13
```

We know what each value in our table represents, but if other people look at our table they would not have any idea about what each value represents. In order to solve this problem, we can assign labels to our variable values. First we have to use the command "label define".

```
label define catapi13label 0 "Low API (0-500)" 1 "Medium API (500-750)" 2 "High API (750-100)"
```
 
With this command line, we created a "shadow variable" (Stata calls it as "label variable"). We are not able to observe directly this variable and it is a little bit different from our other variables. This variable "catapi13label" only contains our labels.
The numbers outside quotation marks represent our variable values, and the text inside quotation marks are our labels. Note: we have to use quotation marks here. If we don't use them, our command will not work. To assign labels to our values, we match this "shadow variable" to our variable of interest using the command "label values":

```
label values catapi13 catapi13label
```

In this command, the first variable is our variable of interest and the second one is our "label variable". We have to put the variables in this order or it won't work. Now that our variable values have labels, let's do our frequency table again:

```
tabulate catapi13
```

As we can see, now it is possible for everyone to understand our table.  But, wait! We have done a mistake! Our third label is wrong. We should have typed "1000" not "100". But, don't worry! It is easy to modify a label that  we created. We only have to re-run the command "label define" using the option "modify"

```
label define catapi13label 2 "High API (750-1000)", modify
```

Let's tabulate our variable again:

```
tabulate catapi13
```

Yes! It's working now! So, if we want to modify a label that we assigned to a variable we only have to use the command "label define" again using the option "modify". We don't have to create a new "label variable".

Finally, Stata has a command that list all label variables available in one dataset. It is specially useful when we are working with a dataset created by others. In order to list all label variables, we use the following command:

```
label dir
```

By using it, Stata will list all label variables. In our case, we only have one variable.

## Value label - Exercise

Your turn. Work in groups of 2 to 4, please! Don’t do it by yourself! Try to figure out how to solve any problems discussing it with your group. Learn by doing (aka learn by making a lot of mistakes). It is ok to cheat and check how the other groups are doing their activity. Just ask them nicely and don’t bother them. Leo and Victor are here to help you. Ask questions!

a) Pick one of our datasets. Choose three variables. Recode them and assign labels to their new values. 

b) Go back to 2011 Latino Barometro dataset. Use the command "label dir" to list all label variables available. Choose two of them and modify them. 
