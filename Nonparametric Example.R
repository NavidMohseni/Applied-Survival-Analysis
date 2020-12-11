#Nonparametric
binom.test(5,18) #Sign Test
#Or 
library(DescTools)
SignTest(immer$Y1, mu = 3)

#Wilcoxon Rank Test

#Appropriate data
#  One-sample data
#  Data are ordinal, interval, or ratio
#  To be a test of the median, the data need to be relatively symmetrical about their median.

#In Wilcoxon Test if two are numeric we use "," and also if one of them is factor we use "~"

library(MASS)
head(immer)
wilcox.test(immer$Y1, 
            mu=3,
            conf.int=TRUE,
            conf.level=0.95)
wilcox.test(immer$Y1, immer$Y2, paired = TRUE) # dependent 2 groups in Wilcoxon Test to check the identical populations


#Mann-Whitney Test

#Two-sample data.  That is, one-way data with two groups only
#Dependent variable is ordinal, interval, or ratio
#Independent variable is a factor with two levels.  That is, two groups
#Observations between groups are independent.  That is, not paired or repeated measures data
#In order to be a test of medians, the distributions of values for each group need to be of similar shape and spread; outliers affect the spread.  Otherwise the test is a test of stochastic equality.


wilcox.test(mpg ~ am, data = mtcars, alternative = "greater")#Mann-Whitney-Wilcoxon Test to check the identical Dist
wilcox.test(mtcars$mpg , mtcars$hp, data = mtcars) #Mann-Whitney for 2 numeric 
kruskal.test(Ozone ~ Month, data = airquality) #Kruskal-Wallis for more than 2 populations (ANOVA)
friedman.test(mtcars$mpg~mtcars$gear|mtcars$am, data = mtcars)
