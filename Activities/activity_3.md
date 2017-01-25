# Activity 3 - Variance "by hand"

Download the [Fake dataset] (https://raw.githubusercontent.com/leobarone/IPSA_USP_EADA_2017/master/Data/fake_data.csv). Open it using MS Excel, Libre Officce or any other spreadsheet manager.

# Calculating the variance "by hand"

The variance is the "Sum of the squared deviations from the mean weighted by the probability of occurence" (or frequency in the sample case).

Let's break the sentence into parts. First, using parenthesis:

"(Sum of the ((squared (deviations from the (mean))) weighted by the probability of occurence))"

From inside to outside, the first "operation" we need to do is (1) calculate the mean (expected value) of the variable. Start by summing the values for all the observations and divide it by the total number of observations. For example, in the case of age:

$E[X] = \frac{x_1 + x_2 + ... + x_29 + x_30}{30} = \frac{37+26+...+32+23}{30} = 34.067

Once we have the mean, we can calculate the "deviation from the mean". This can be done by subtracting the mean from the values of each observation

