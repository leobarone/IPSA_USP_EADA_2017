# Laboratory 1 - The basics of getting, reading and describing the data

Authors: [Leonardo Sangali Barone] (leonardo.barone@usp.br) and [Patrick Silva] (leonardo.barone@usp.br)

## Objective

In this first laboratory we are going to learn the basics of how to manage a dataset on Stata and describe the data. We will use 2 different datasets, the 2013 Growth Academic Performance Index (API) Data File and the 2015 Latinobarometer.

## Openning, clearing and saving

To open a new file use the command "use". (Beware: write the correct file path in your computer). Once you have done it, data will be stores in the memory.

```
use "C:/My Documents/api13_school_data.dta"
```

Observe that the api13_school_data is already in Stata format. If it were not -- it could be in a spreadsheet or text file -- we would have to import it. But let's forget this for now.

To clear the memory of Stata simply use

```
clear
```

"clear", as we will see, is a option of the use command. You can combine both by using "clear" at the end of the "use" command, after a command. For example

```
use "C:/My Documents/api13_school_data.dta", clear
```

You can save your dataset with the "save" command (Beware: write the correct file path in your computer; Beware 2: do not overwrite the original file)

```
save "C:/My Documents/api13_school_data_v2.0.dta"
``` 

# Hey! But where is my data?

To "look" to the dataset on Stata, type

```
browse
```

But why do you need to look at the individual values of the dataset? If you have never worked with a statiscal package (or have worked with SPSS or Minitab) you probably are finding weird to work with Stata.

Don't be scared! You will get use to not looking at your data and you will love it. In time, you will realize that you just need to know the variables you have and have the instruments to explore them -- graphcally, with tables, summaries, etc. Knowing you dataset is not equal to looking at the rows and columns.

Similar to browse, there is the 'edit' command

```
browse
```

Both of them open the matrix that contain the dataset. The differences are obvious: you cannot edit with 'browse' (and that is why you should use it!)

## Buttons! Use them wisely!

You can use the windowns interface to do most of the "stuff" we are going to learn. You can easly locate where to open, clear, save, browse and edit.

## Do-files.

Differently from working in spreadsheets, on Stata we can write step-by-step scripts to every modification we do in our dataset. Do-file is the Stata file format for scripts Do-files are extremely useful for reproducible research, because they allow us to keep record of every decision made regarding our data. Also, it allows us to rebuilt the dataset from the original data if anything goes wrong.

"Do-files" are just text files that contain Stata commands. You can open them on a notepad. When opened in Stata, the syntax is "colored". If you want to "run" a command from the do-file window, just use the "run" button

If you want to write a comment on a do-file, use * before the sentence as in the example

```
* This is a comment line
* The next line contains a command
describe
```

Locate the "do-file" button at the windowns interface and start recording you commands into it.

## Describing the dataset

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

Take a fews seconds to understand the output.

(Wait, don't rush, look at it again!).

If you want some more detailed information on the variable, you can use  the option "detail" (after the comma).

```
summarize api12, detail
```

Take a fews seconds to understand the output. 

(Wait, don't rush, look at it again!) 

(Don't worry if you don't know what kurtosis and skewness mean).

You can use summarize for the whole dataset:

```
summarize
```

Or for a handful of variables:

```
summarize cds-api12
```

Can't you see that the data summary of some variables are blank? Why is that happening?

(Wait, don't rush, think about it again!) 

Our final command to understand the data is "codebook" You can use it for the whole dataset 

(Beware: it is going to be a mess!)

```
codebook
```

(Hint: Use the "Break" button to end this mess!)

Or for some or just one variable

```
codebook api13 yr_rnd
```

(Much better!)

Can you understand the differences between the outputs of "api13" and "yr_rnd"? Take a fews seconds to understand the output.

## Your turn

It's time for you to work by yourselves. Work in groups of 2 to 4, please! Don’t do it by yourself! Try to figure out how to solve any problems discussing it with your group. Learn by doing (aka learn by making a lot of mistakes). It is ok to cheat and check how the other groups are doing their activity. Just ask them nicely and don’t bother them. Leo and Victor are here to help you. Ask questions! 


Now that you have learnt the basics of openning and describing the dataset, repeat it with Latinobarometer dataset (which is the reduced version with Brazil data, only).

