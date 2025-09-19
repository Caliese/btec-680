#author: Caliese; date: 9/9/2025; purpose: test correlation

#load the library ggpubr
library(ggpubr)

#Read in dummy data
my_data <- mtcars

#read some dummy dataset
head(my_data)

#hypothesis: Weight is the car is more, then mpg is less and vice-versa

#plot the data
ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

#apply correlation function
res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 

#print the results
res


        Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 