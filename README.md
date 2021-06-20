# MechaCar Statistical Analysis

## Objective
* The objective to this week's project is to analyze the data for the new Mecha Car. A multiple linear regression model, descriptive statistics, and t-tests will be created in RStudio.
* Each stage of the analysis will be reviewed here.

## Linear Regression to Predict MPG
* Multiple variables were included in the linear regression analysis. The summary of that model was reviewed to answer the following questions:

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
These coefficients were more significant to the overall value of mpg.
	* Intercept
	* vehicle_length
	* ground_clearance

![MechaCar Summary3](https://github.com/summerstime/MechaCar_Statistical_Analysis/blob/main/Images/mechaCar_lm_summary3.png) 

* Is the slope of the linear model considered to be zero? Why or why not?
	* No, the slope of the linear model is not considered to be zero. The p-value is 5.35e-11 which is much smaller than the confidence level of 0.05. Which leads to a rejection of the null hypothesis.

![MechaCar Summary2](https://github.com/summerstime/MechaCar_Statistical_Analysis/blob/main/Images/mechaCar_lm_summary2.png)

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
	* Since the p-values are so small, it appears that mpg is modelled effectively; but several of the inputs do not influence the mpg result according
to the summary. These may need to be removed from the analysis since their presence may add in some error to the calculation.
 

## Summary Statistics on Suspension Coils

* Descriptive statistics were created with the data in two different forms. One for the total PSI as a whole and the other was grouped by Lot numbers.
The following question was asked:

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per 
square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
	
![Total Summary](https://github.com/summerstime/MechaCar_Statistical_Analysis/blob/main/Images/total_summary.png) 

* The table shows that the variance of two of the three lots performed below the threshold of 100 pounds per sq inch. Lots 1 and 2 had a variance of 0.9796 and 7.4694 respectively. So, the answer to the question is that 2 of the 3 lots do meet the design specification and also the variance as a whole, measuring 62.2936, also meets the design specification. 
* Lot 3 does not and should be investigated further because it has the most variability and the mean and median were less than the other lots.

![Lot Summary](https://github.com/summerstime/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary.png) 

## T-Tests on Suspension Coils 

* T-Tests were calculated for the data as a whole and also on each lot. The population mean was set to 1500 PSI for all tests.

* T-Test for the whole resulted in a p-value of 0.06028 which is slightly greater than the standard 0.05 confidence level. The mean of PSI is 1498.78, which is less than the population value of 1500.

![All T-Test](https://github.com/summerstime/MechaCar_Statistical_Analysis/blob/main/Images/t.test_for_all.png)

* T-Test for Lot#1 shows that the p-value is equal to 1, which means the mean value of PSI for Lot#1 is equal to the PSI population mean of 1500. 

![Lot#1 T-Test](https://github.com/summerstime/MechaCar_Statistical_Analysis/blob/main/Images/t.test_for_Lot1.png) 

* T-Test for Lot#2 shows a p-value of 0.6072, which is much greater than the standard 0.05 confidence level. Lot#2's mean is 1500.2. Slightly larger than the population's mean.

![Lot#2 T-Test](https://github.com/summerstime/MechaCar_Statistical_Analysis/blob/main/Images/t.test_for_Lot2.png) 

* T-Test for Lot#3 shows a p-value of 0.04168, which is slightly less than the standard 0.05 level. Lot#3's mean value is 1496.14 which is less than the population's mean. This lot's results would also suggest that it is a strong contributor to the overall result's p-value being so close to the typical confidence level of 0.05.  

![Lot#3 T-Test](https://github.com/summerstime/MechaCar_Statistical_Analysis/blob/main/Images/t.test_for_Lot3.png)

## Study Design: MechaCar vs Competition

* The design of a study to compare the MechaCar to the competition must include those aspects that matter to the general consumer of automobiles. Several aspects that are considered when purchasing a new vehicle will be
used for this study, such as price, MPG (highway and city), seating capacity, horsepower (HP), safety rating, frequency of maintenance, maintenance cost, style, luxury(electronics). The ordinal data will need a ranking system
clarified to compare all competitors fairly to each other.

* The hypothesis of the study is that MechaCar performs similarly to the Competition.
	* Confidence Level = 0.05
	* The Null Hypothesis (Ho) is that MechaCar performs equivalently to the Competition and that there is no difference.
	* The Alternative Hypothesis (Ha) is that MechaCar performs better than the Competition.
	* The Alternative Hypothesis (Hb) is that MechaCar performs worse than the Competition.

* Statistical testing that will be used to determine this will be the following:
	* First: Understanding the data collected: 
		* Normally Distributed?
		* Data Types of the columns?
		* Numerical or String or Ranking, etc.?
		* Ordinal Data? 
		* Qualitative vs. Quantitative Data
		* Quantity of data points?
		* Null values? keep or discard?
	* Second: Determine which tests can be used to compare the datasets.
		* Descriptive Statistics - Price, MPG, HP, any continuous data that is not ordinal. Helps determine if the different competitors are roughly in the same "ball park" or if there is an outlier.
		* T-Test - same as descriptive stats
		* Multiple Linear Regression - same as descriptive stats. Useful for multiple independent variables.
		* ANOVA - same as descriptive stats
		* Correlation can be used on different data types. Different tests depending on type. Helps include and exclude data points for the study.
	* Third: Learn more about the data by correlation and descriptive statistics and plotting of the data. Some of the results will lead you to different testing or determinations, such as not including data sets that are 
clearly not significant to the comparison. This will also help tune-in the analysis and provide a result to either reject Ho and accept Ha or Hb or accept Ho and reject the alternatives.

* What data is needed to run the statistical test?
	* T-Test and ANOVA: Preferred data is normally distributed with a smooth bell shape without skewing. However, that is not always available.

