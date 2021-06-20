# MechaCar Statistical Analysis

## Objective
* The objective to this week's project is to analyze the data for the new Mecha Car. A multiple linear regression model will be created in RStudio.
* Each stage of the analysis will be reviewed here.

## Linear Regression to Predict MPG
* Multiple variables were included in the linear regression analysis. The summary of that model was reviewed to answer the following questions:

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
These coefficients were more significant to the overall value of mpg.
Intercept
vehicle_length
ground_clearance

* Is the slope of the linear model considered to be zero? Why or why not?
No, the slope of the linear model is not considered to be zero. The p-value is 5.35e-11 which is much smaller than the confidence level of 0.05.
Which leads to a rejection of the null hypothesis.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
Since the p-values are so small, it appears that mpg is modelled effectively; but several of the inputs do not influence the mpg result according
to the summary. These may need to be removed from the analysis since their presence may add in some error to the calculation.

## Summary Statistics on Suspension Coils

* Descriptive statistics were created with the data in two different forms. One for the total PSI as a whole and the other was grouped by Lot numbers.
The following question was asked:

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per 
square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

* The table shows that the variance of the two of the lots performed below the threshold of 100 pounds per sq inch. Lots 1 and 2 had a variance of 0.9796 and 7.4694 respectively.
So, the answer to the question is that 2 of the 3 lots do meet the design specification and also the variance as a whole, measuring 62.2936, also meets the design specification.
Lot 3 does not and should be investigated further because it has the most variability and the mean and median were less than the other lots.

## T-Tests on Suspension Coils 





If the Estimate is far enough away from zero, then the variable is significant. Subtract the zero from the estimate and divide by the std dev to get the t value.
If the t value is very small then the variable is consider not significant.If the t value is large then p will be small and that is a significant variable.
P value is less than the acceptance level 0.05 so you reject the null hypothesis.
Pr value is a two sided answer and P may need to be divided by 2 to get one tail.
