#simple linear regression
women
head(women)
cor(women)
names(women)
cov(women$height,women$weight)
cor(women$height,women$weight)
pairs(women)

fit1= lm(weight ~ height, data = women)
summary(fit1)
#predict for 69.5 and 70.5
(new = data.frame(height=c(69.5,70.5)))
(p1=predict(fit1,newdata = new))
cbind(new,p1)




attributes(fit1)  #output of model

#coefficients
coef(fit1)
#p values for b0 & b1 are significant as it is < 0.05
#pvalue1 = 1.71e-09 < 0.05
#pvalue2 = 1.09e-14 < 0.05

coef(fit1)
#Y = -87 + 3.4 * X  # no extrapolations
(Y = -87 + 3.4 * 20)  # weight cannot be negative
range(women$height)
(Y = -87 + 3.4 * 58)
(Y = -87 + 3.4 * 61.5)
(Y = -87 + 3.4 * 72)
range(women$height)
women


#R^2
(summary(fit1))$r.squared  #0.991
(summary(fit1))$adj.r.squared  #0.9903
#99% of variation in weight is explained by Height
#Good Linear Model for Prediction


#FStats : p value
(summary(fit1))$fstatistic 
#pvalue : 1.09e-14  < 0.05 : Model exists
#There is at least 1 IV which explains variation in Y (DV)


#Prediction : for height = 65, 66

(new1 = data.frame(height=c(65,66,66.5)))
new1
(p1=predict(fit1, newdata = new1))
cbind(new1, p1)
#136.7333 140.1833

(new2 = data.frame(height=c(60,69)))
(p2=predict(fit1, newdata = new2))
cbind(new2, p2)

?predict
predict(fit1, newdata = new1, interval='confidence')
predict(fit1, newdata = new1, interval='prediction')

women
women$weight
fitted(fit1) # predicted values of all original Xs
predict(fit1, newdata = data.frame(women$height)) # same as above for single X

new3 = data.frame(women$height)  # DF using height of original data
cbind(women, fitted(fit1), residuals(fit1))  # compare women, predicted, errors
residuals(fit1)  # diff between actual and predicted values of weight
summary(fit1)
summary(residuals(fit1))

plot(fit1)
cor(fitted(fit1), women$weight)
summary(fit1)



names(mtcars)
fit2= lm(mpg~wt,data = mtcars)
range(mtcars$wt)
#predict mpg for wt=2and 3
(new=data.frame(wt=c(2,3)))
(p1=predict(fit2,newdata = new))
cbind(new,p1)
plot(new)
plot(fit2)






par(mfrow=c(2,2))




# Simple Linear Regression : Built in Data Set Women
# Check for assumptions of Regression in the data Set
women
?women
str(women)
fit = lm(weight ~ height, data=women)
?plot
#Initial Checks
cor(women$height, women$weight)
#there is Strong and Positive Relationship between height and weight
plot(women$height, women$weight)
par(mfrow=c(1,1))
plot(fit, which=2)
residuals(fit)
plot(women)

str(women)
head(women)
women[,2]
fitted(fit)
cbind(women, fitted(fit), predicted=3.45 * women$height - 87)
cbind(women, fitted(fit), residue=fitted(fit)-women$weight, resid(fit))
y = 3.4 * height - 87
plot(residuals(fit))
hist(women$height, breaks=4)
hist(residuals(fit))

hist(residuals(fit), freq=F)
lines(density(residuals(fit)))

#Prediction
ndata = data.frame(height=52.5)
predict(fit, newdata=ndata, type='response')


#Assumptions Regression
#Linearity----
#Linearity of the data. The relationship between the predictor (x) and the outcome (y) is assumed to be linear.
# component + residual plot 
plot(women$height, fitted(fit))
plot(residuals(fit) ~ fitted(fit))
plot(fit, which=1)
#residuals should be randomly distributed and not increase or decrease 


#Normality----
#Normality of residuals. The residual errors are assumed to be normally distributed.
plot(density(resid(fit)))
plot(fit, which=2)

#Homoscedasticity----
#Homogeneity of residuals variance. The residuals are assumed to have a constant variance (homoscedasticity - opposite of heteroscedasticity)
plot(fit, which=3)
#No funnel shape, random distribution of residuals
plot(fit, which=4)

#Auto-Correlation----
#Independence of residuals error terms. (Not dependent on previous values)
car::durbinWatsonTest(fit)
#pvalue < 0; Ho that there is no correlation (r2=0) is accepted

#Outliers
plot(fit, which=4)
#potential outliers are highlighted 1, 14, 15 row
women[c(1,14,15),]
summary(fit)
#Lets remove these values and then find R2
fit2 = lm(weight ~ height, data=women[-c(1,14,15),])
summary(fit2)
(summary(fit))$r.squared
(summary(fit2))$r.squared
AIC(fit, fit2) #lower value of AIC is better
?AIC

#Potential Problems
#Non-linearity of the outcome - predictor relationships
#Heteroscedasticity: Non-constant variance of error terms.
#Auto Collinearity, Multi-collinearity
#Presence of influential values in the data that can be:
#Outliers: extreme values in the outcome (y) variable
#High-leverage points: extreme values in the predictors (x) variable

#All these assumptions and potential problems can be checked by producing some diagnostic plots visualizing the residual errors.
par(mfrow=c(2,2))
plot(fit1)

