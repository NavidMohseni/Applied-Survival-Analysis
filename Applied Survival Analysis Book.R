#Book: Applied Survival Analysis Using R


#important: the scale is 1/lambda
#The below is about Weibull but it can be done with gamma the same
Weibsurv <- function(t, shape, scale) {
  pweibull(t, shape = shape, scale = scale, lower.tail = F)
}
curve(Weibsurv(x, shape = 1.5, scale = 1/0.03), from=0, to=80,
      ylim=c(0,1), ylab="Survival probability", xlab="Time")

#The hazard pdf divided by survival function
Weibhaz <- function(t, shape, scale){
  dweibull(t, shape = shape, scale = scale / pweibull(t, shape = shape, scale = scale, lower.tail = FALSE))
}
curve(Weibhaz(x, shape = 1, scale = 1/0.03), from = 0, to = 80,
      ylim = c(0,1))

#KM estimator
survfit(Surv(time, event)~1, data = data)

#Nelson-Alen 
survfit(coxph(Surv(time, event)~1, ties = "breslow", data = data))

#Equality of the two failure distributions
survdiff(formula=Surv(time,cens)~treat,data=gehan) #log-rank test
survdiff(formula=Surv(time,cens)~treat,data=gehan,rho=1) #Gehan test
survdiff(formula=Surv(time,cens)~treat,data=gehan,rho=0.5)#Tarone-Ware test

#AFT
survreg(Surv(time, cens) ~ factor(treatment), data = data, dist = "distribution")

