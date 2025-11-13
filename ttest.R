Author: Caliese, Date: 11/13/2025, Purpose: T test

#Load random numbers
x = rnorm(10)
y = rnorm(10)

pts = seq(-4.5,4.5,length=100)

plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')

#apply ttest function
ttest = t.test(x,y)


        Welch Two Sample t-test

data:  x and y
t = 0.41656, df = 17.808, p-value = 0.682
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.9475351  1.4157583
sample estimates:
  mean of x   mean of y 
-0.06052881 -0.29464041 