# Essentials of Applied Data Analysis - Stata Laboratories, Handouts and Activities

Welcome to Essentials of Applied Data Analysis course materials repository at VIII IPSA-USP Summer School on Methods and Concepts in Political Science and International Relations, 2017!

##  Schedule

From January 23, 2017 to  January 27, 2017. The Summer School detailed schedule can be found [here] (http://summerschool.fflch.usp.br/schedule/detailed-schedule).

##  What will I find here?

All of the course materials, except for the readings, can be found in this page. Scrool down to locate the course Syllabus, Handouts, Laboratories, Activities and Miscellania. You will also find at "Issues" a Forum for discussions.

##  Syllabus

Jan-04-2017 version of the [Syllabus] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Syllabus/syllabus.pdf).

##  Readings

Please, login at the [course page] (http://ipsa-usp.com/users/login) to access the readings (enrolled students only).

The two books I use most and recommend reading for this course are:

- Moore, W. H., & Siegel, D. A. (2013). A Mathematics Course for Political and Social Research. Princeton University Press.
- Ross, S. M. (2010). Introductory Statistics. Academic Press.

## Handouts

Author: [Leonardo Sangali Barone] (leonardo.barone@usp.br)

In the 2017 edition of the course I decided we will follow handouts during class instead of presentations. I hope that the handouts together became a nice reference material during and after the course.

All of the handouts where built inspired on the course readings, in particular Ross' and Siegel and Moore's books, both not cited properly in the material.

The handouts by themselves are not sufficient for self-learning and does not make sense without the classes they have been prepared to. I am sure you will find typos and small mistakes in the material. If you do, please, comunicate me.

Also, expect me to edit the handouts during the course and the days after it ends.

At the end of the course, I will combine all of the handouts in a single document and make it available.

- [Set Theory] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_set_theory.pdf)
- [Probability rules - Axioms and Theorems summary] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_probability_axioms_theorems.pdf)
- [Probability rules - Single Events] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_probability_single.pdf)
- [Probability rules - Compound Events] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_probability_compound.pdf)
- [Probability rules - Independence] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_probability_independence.pdf)
- [Probability rules - Bayes' rule] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_probability_bayes.pdf)
- [Random variables] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_random_variables.pdf)
- [Building a fake dataset] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_building_fake_data.pdf)
- [Discrete Random variables] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_discrete_random_variables.pdf)
- (Not finished) [Continuous Random Variables] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_continuous_random_variables.pdf)
- [Expected Value] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_expected_value.pdf)
- [Joint Distributions] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_joint_distributions.pdf)
- [Covariance and Correlation] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_covariance_correlation.pdf)
- (Not finished) [Special Distributions] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_special_distributions.pdf)
- [Central Limit Theorem] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_central_limit_theorem.pdf)
- (Graphs are missing) [Sampling, Confidence Intervals and Hypothesis Testing] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_hypothesis_testing.pdf)
- (Not finished) [Bivariate Regression] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Handouts/handout_regression.pdf)

##  Laboratories

Authors: [Leonardo Sangali Barone] (leonardo.barone@usp.br) and [Patrick Silva] (leonardo.barone@usp.br)

### Instructions and Objective

The following laboratories were prepared as activies for the Essentials of Applied Data Analysis course at IPSA-USP Summer School 2017. The main goal is to prepare you to learn the basics of data management and analysis using Stata, which is one of the most popular statistical packages in political science and economics.

The idea is that you learn by yourself, with my, as well as Victor's, help and support. In my experience, when students learn by doing -- and not by following me on the board -- and have a reference material to go back to whenever they want (this labs will be online for indefinite time), they learn a lot more.

Start in sequence by clicking in the links bellow. We do have a daily goal for the laboratories. However, it is very, very important that you don't rush. Better learn well a part of the material than learn less by trying to cover everything too fast. Even though the module lasts for only one week, you can finish it whenever you want and there will be no assessment of your skill at the end of the course.

### Datasets

#### 2013 Growth Academic Performance Index (API) Data File

We will use 2 different datasets. The first one is the 2013 Growth Academic Performance Index (API) Data File, from the California Department of Education. The original dataset can be found [here] (http://www.cde.ca.gov/ta/ac/ap/). This dataset contains the Standardized Testing and Reporting (STAR) Results for californian schools in 2013, a program that lasted from to 1996 to 2013, when it was finally substituted. We will work with a selected subset of the dataset. 

About this dataset: each unit in the dataset is a californian school. The data contain the main result of the test in 2013, in the previous year, and a ton of information about the school caracteristics. There are 180 variables in the original dataset. The analysis problem here is pretty much obvious: we want to explain school performance by it's caracteristics. In this module, we will use tables, graphs and correlations, as well as regression analysis if time allows, to explore this problem.

Whenever you need to check a variable in this dataset, you can go to the dictionary, available online [here] (http://www.cde.ca.gov/ta/ac/ap/reclayout13g.asp). Please, be sure you download the [data] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Data/api13_school_data.dta), the modified version we prepared for the course -- it is already in Stata format -- into your computer before you start.

I particularly like this dataset because you can, in the near future, learn more Stata by yourself at [IDRE-UCLA] (http://www.ats.ucla.edu/stat/stata/) resources, whose [web book] (http://www.ats.ucla.edu/stat/stata/webbooks/reg/chapter1/statareg1.htm) on regression analysis uses and older versions of the same dataset.

#### 2011 Latinobarometer

The second one is the 2011 Latinobarometer. This is a very popular survey on democracy and elections in Latin America and the original can be found [here] (http://www.latinobarometro.org/latContents.jsp). Latinobarometer contains data on several Latin American Countries. We are going to use the data on Brazil only. "Barometers" are very good source of public opinion data regarding issues of political regime, civil liberties, economic performance of governments and etc. I am sure this dataset can be source of lots of dissertations of students in political economy and comparative politics.

We will use the dataset to formulate hypothesis about the brazilian electorate and explore our creativity. This is why it will be very important that we spend some time exploring the dictionary, whose .pdf is available both in [english] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Data/Latinobarometro_2011_eng.pdf) and [spanish] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Data/Latinobarometro_2011_esp.pdf) (although not in portuguese, even though it exists). It is a consolidated survey, so don't be frustrated if the data you are looking for is not ther and look for something else.

Again, before you start, download the shortened version (Brazil only) we prepared for the laboratories [here] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Data/Latinobarometro_2011_eng_BR.dta).

Note: I had planned to use the 2015 Latinobarometer instead of the 2011. However, there were some changes in the data available (for example, age is not an Integer, but an Ordinal variable) and I decided to go back to the 2011 dataset. If you find "2015" somewhere in the tutorials (and you probably will), please, read 2011. If you want to use the 2015, I encourage you, as long as you don't mind adapting the laboratories by yourself. I left the datasets ([2015, Brazil only] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Data/Latinobarometro_2015_eng_BR.dta)) and questionaires ([english] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Data/Latinobarometro_Questionnaire_2015_Eng.pdf); [spanish] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Data/Latinobarometro_Cuestionario_2015_Esp.pdf)) available.

### Links to the laboratories 

- [Laboratory 1 - The basics of getting, reading and describing the data] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Labs/stata_lab_1.md)
- [Laboratory 2 - Distributions: frequency tables, histograms and densities] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Labs/stata_lab_2.md)
- [Laboratory 3 - Renaming, labeling and recoding variables] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Labs/stata_lab_3.md)
- [Laboratory 4 - Logical Operators and if] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Labs/stata_lab_4.md)
- [Laboratory 5 - Table of summary statistics] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Labs/stata_lab_5.md)
- [Laboratory 6 - Value labels] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Labs/stata_lab_6.md)
- [Laboratory 7 - Comparison between groups and Box-plot graphs] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Labs/stata_lab_7.md)
- [Laboratory 8 - Generating new variables and replacing values] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Labs/stata_lab_8.md)
- [Laboratory 9 - Two way graphs and correlation] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Labs/stata_lab_9.md)
- [Laboratory 10 - Generating new variables and calculating functions of variables] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Labs/stata_lab_10.md)
- [Laboratory 11 - Confidence intervals and hypothesis test] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Labs/stata_lab_11.md)

## Activities

To be anounced

## Code and Miscellania

- [Stata Coin Simulation] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Do_files/coin_simulation.do)
- [Fake Dataset of Fakeland Citizens] (https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Miscellania/simulated_dataset.R)

## Questions, issues and discussions in Github

If you have any question, you can always write to [me] (leobarone@gmail.com) or to [Victor] (victor.asaraujo@gmail.com). But, there is a nice way to share your questions, open issues or start discussions: use github to open an issue!

Just click on "Issues" at the tab menu above, or [here] (https://github.com/leobarone/IPSA_USP_EADA_2017/issues), check if it doesn't yet exist (or if there is something very similar), and create your new issue (as in the illustration below)

You need to create a github account to create or comment and issue. This is a nice chance to do it! It's super cool and geek.

![alt text](https://github.com/leobarone/IPSA_USP_EADA_2017/blob/master/Miscellania/issues.png "How to open issues")