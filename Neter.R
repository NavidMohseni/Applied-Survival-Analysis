
BA <- c(29,42,38,40,43,40,30,42)
mean(BA)
A <- c(30,35,39,28,31,31,29,35,29,33)
AA <- c(26,32,21,20,23,22)
Fitness <- list(BA,A,AA)
bind_rows(BA,A,AA)
?bind_rows
Fitness <- list(
  BA = c(29,42,38,40,43,40,30,42)
  A = c(30,35,39,28,31,31,29,35,29,33)
  AA <- c(26,32,21,20,23,22)
)
bind_rows(Fitness)
data.frame(BA,A,AA)

cbind(BA, A, AA)


Fitness$Group <- c(rep(1,8), rep(2,10), rep(3,6))
Fitness

Fitness$Group <- as.integer(Fitness$Group)


#16.9
Fitness <- read_csv("C:/Users/Asus/Desktop/Fitness.csv", col_names = FALSE)
colnames(Fitness) <- c("Days", "Group")
factor(Fitness$Group)
Fitness
ANOVA <- aov(Days ~ Group, data = Fitness)             
summary(ANOVA)
fit1 <- lm(Days ~ factor(Group), data = Fitness)
summary(fit1)
ggplot(data = Fitness, aes(x = Group, y = Days)) + geom_point()
residuals(fit1)
sum(residuals(fit1))




#17.10
Fitness
library(ALSM)
RehabilitationTherapy
Fitness
str(Fitness)
with(Fitness,oneway(y = Days,group = Group, alpha = 0.01))
with(Fitness,oneway(y = Days,group = Group, alpha = 0.05))




#18.25
TelephoneCommunications
with(TelephoneCommunications, oneway(y = y , group = group, alpha = 0.05))

#19.39
mc <- matrix(c(1,-1),  nrow = 1) 
mc
ssea.oneway(2,mc , sigma = 2.4, n.weight = c(1,1), ci.width = c(2 * 1.2), type = "b", alpha = .05)


#21.18
Eye <- read_table(url("http://users.stat.ufl.edu/~rrandles/sta4210/Rclassnotes/data/textdatasets/KutnerData/Chapter%2019%20Data%20Sets/CH19PR12.txt"), col_names = FALSE)
Eye
names(Eye) <- c("rate","contact", "gender", "number")
str(Eye)
Eye$gender <- as.factor(Eye$gender)
Eye$contact <- as.factor(Eye$contact)
aov1 <- lm(rate ~ contact + gender + contact*gender, data = Eye)
summary(aov1)
