#MEMORY 
#exp1 <- c(48133, 48013,47977,48075, 48147, 48322, 48187, 48407, 48152,48324,48295,48173,48689,48446,49112)
#exp2 <- c(143366,142719,141472,141942,141479,141566,141432,142318,142086,142293,143019,142075,142502,142649,142210)

#CPU
exp1 <- c(21.31,24.83,19.87,20.79, 22.39,21.82, 22.86,23.23,23.54,24.44,21.64,22.42, 22.03,22.17, 22.21)
exp2 <- c(6.96,11.09,8.61,6.77,6.99,6.13,6.87,5.98,5.4,6.6,8.17,11.65,5.73,6.67,5.29)

boxplot(exp1, xlab="Perception Pipeline Configuration", ylab="CPU Usage (%)" )
boxplot(exp2, xlab="MoveIt Interface & API", ylab="CPU Usage (%)" )

#REMOVE OUTLIERS FOR exp1 ACTIVITY VECTOR
Q_exp1 <- quantile(exp1, probs=c(.25, .75), na.rm = FALSE)
iqr_exp1 <- IQR(exp1)
up_exp1 <-  round(Q_exp1[2]+1.5*iqr_exp1)
low_exp1 <- round(Q_exp1[1]-1.5*iqr_exp1)

data_outlier_exp1 <- subset(exp1, exp1 > low_exp1 & exp1 < up_exp1)
ifelse(exp1>up_exp1, up_exp1, exp1)
ifelse(exp1<low_exp1, low_exp1, exp1)

#REMOVE OUTLIERS FOR exp2 ACTIVITY VECTOR
Q_exp2 <- quantile(exp2, probs=c(.25, .75), na.rm = FALSE)
iqr_exp2 <- IQR(exp2)
up_exp2 <-  Q_exp2[2]+1.5*iqr_exp2
low_exp2 <- Q_exp2[1]-1.5*iqr_exp2

data_outlier_exp2 <- subset(exp2, exp2 > low_exp2 & exp2 < up_exp2)
ifelse(exp2>up_exp2, up_exp2, exp2)
ifelse(exp2<low_exp2, low_exp2, exp2)

#NORMALITY TEST
library(moments)

shapiro.test(exp1)
shapiro.test(exp2)

skewness(exp1)
skewness(exp2)

#Choose transformation method based on value of skewness and then check for normality again

#TRANSFORMATION TO NORMAL --> SQR ROOT METHOD for moderate skew

#Positive Skew
exp1_sqr = sqrt(exp1) 
exp2_sqr = sqrt(exp2) 

#TRANSFORMATION TO NORMAL --> LOG METHOD for greater skew
#Positive Skew
exp1_log = log10(exp1) 
exp2_log = log10(exp2) 

#TRANSFORMATION TO NORMAL --> INVERSE METHOD for severe skew

#Positive Skew
exp1_inverse = 1/exp1
exp2_inverse = 1/exp2
#Negative Skew
#data_no_outlier_exp1 = 1/(max(data_no_outlier_exp1+1) - data_no_outlier_exp1) 

#Check for normality once transformation applied using Shapiro Test
shapiro.test(exp1_sqr)
shapiro.test(exp1_log)
shapiro.test(exp1_inverse)
shapiro.test(exp1_tl)

shapiro.test(exp2_sqr)
shapiro.test(exp2_log)
shapiro.test(exp2_inverse)
shapiro.test(exp2_tl)

#Use the dataset whose p-value is greater than 0.05 for T-Test

#IF NOT NORMAL --> MANN WHITNEY WILCOX TEST (TWO SIDED)
wilcox.test(exp1, exp2)

#IF NORMAL --> T TEST (TWO SIDED)
t.test(exp1, exp2)

#QQPLOT
library("car")
qqPlot(exp1, ylab="cpu usage (%)", title("Normality of CPU Usage for Perception Pipeline Configuration") )
qqPlot(exp2, ylab="cpu usage (%)",  title("Normality of CPU Usage for MoveIt Interface & API"))

       
