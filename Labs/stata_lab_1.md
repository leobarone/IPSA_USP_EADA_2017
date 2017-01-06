# Laboratory 1 - The basics of getting, reading and describing the data

## Objective

In this first laboratory we are going to learn the basics of how to manage a dataset on Stata and describe the data. We will use 2 different datasets. The first one is the 2013 Growth Academic Performance Index (API) Data File, from the California Department of Education. This dataset contains the Standardized Testing and Reporting (STAR) Results for californian schools in 2013. We will work with a selected subset of the dataset. I particularly like this dataset because you can, in the near future, learn more Stata by yourself at IDRE-UCLA (http://www.ats.ucla.edu/stat/stata/), whose webbook on regression analysis uses the same dataset.

The second one is the 2011 Latinobarometer. This is a very popular survey on democracy and elections in Latin America. Latinobarometer contains data on several Latin American Countries. We are going to use the data on Brazil only. "Barometers" are very good source of public opinion data regarding issues of political regime, civil liberties, economic performance of governments and etc.

## Openning, clearing and saving

To open a new file use the command "use". (Beware: write the correct file path in your computer).

```
use "C:/My Documents/api13_school_data.dta"
```

To clear the memory of Stata simply use

```
clear
```

"clear", as we will see, is a option of the use command. You can combine both by using "clear" at the end of the "use" command, after a command

```
use "C:/My Documents/api13_school_data.dta", clear
```
You can save your dataset with the "save" command (Beware: write the correct file path in your computer) (Beware: do not overwrite the original file)

```
save "C:/My Documents/api13_school_data_v2.0.dta"
```

# Do-files.

Differently from working in spreadsheets, on Stata we can write step-by-step scripts to every modification we do in our dataset. Do-file is the Stata file format for scripts Do-files are extremely useful for reproducible research, because they allow us to keep record of every decision made regarding our data. Also, it allows us to rebuilt the dataset from the original data if anything goes wrong.

# Describing the dataset

The first task we need to tackle when we open a dataset is to describe it. Stata has a handful of commands that allows us to take a very quick look at the data. The most obvious is the describe command:

```
describe
```

Take a good look at everything that is displayed by this command: number of obs, number of vars, date, size, info on each variable and "sorted by".

If your dataset is too big (in terms of number of variables), you might want to  display a limited number of variables. There are some ways you can do it (compare them):

```
describe cds stype sped size api12 api13
describe cds-api12
```
"describe" is a very useful command, but it does not give us any descriptive information on the data itself. If you want to check some basic information on the variable you can use the summarize command:

```
summarize api12
```

Take a fews seconds to understand the output. (wait, don't rush, look at it again). If you want some more detailed information on the variable, you can use  the option "detail" (after the comma)

```
summarize api12, detail
```

Take a fews seconds to understand the output. (wait, don't rush, look at it again) (don't worry if you don't know what kurtosis and skewness mean). You can use summarize for the whole dataset

```
summarize
```

Or for a handful of variables

```
summarize cds-api12
```

Can't you see data the summary of some variables are blank? Why is that happening?

Our final command to understand the data is "codebook" You can use it for the whole dataset (Beware: it is goin to be a mess) 

```
codebook
```

(Use the "Break" button to end this mess).

Or for some or just one variable

```
codebook api13 yr_rnd
```

(Much better)

Can you understand the differences between the outputs of "api13" and "yr_rnd"? Take a fews seconds to understand the output.

# Your turn


It's time for you to work by yourselves. Work in groups of 2 to 4, please! Don’t do it by yourself! Try to figure out how to solve any problems discussing it with your group. Learn by doing (aka learn by making a lot of mistakes). It is ok to cheat and check how the other groups are doing their activity. Just ask them nicely and don’t bother them. Leo and Patrick are here to help you. Ask questions! Now that you have learnt the basics of openning and describing the dataset, repeat it with Latinobarometer dataset (Latinobarometro_2011_eng_BR.dta, which is the reduced version with Brazil data, only).

