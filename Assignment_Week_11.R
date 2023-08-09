# Assignment Week 
# Ethan R Feldman

?InsectSprays
InsectSprays

# 1.a 
find_mode = function(x) {
  u = unique(x)
  table = tabulate(match(x, u))
  u[tab == max(tab)]
}
find_mode(InsectSprays$count)

# 1.b
# I'm struggling to understand what "count" means
tapply(InsectSprays$count, INDEX = InsectSprays$spray, FUN = sum)

# 1.c
# I do not understand this question at all, 
# since I don't know what "count" means this question becomes 
# impossible to understand
round(table(InsectSprays$spray)/nrow(InsectSprays)*100)


# 2.a
?mtcars
mtcars

# 2.b
plot(mtcars$hp, mtcars$qsec, xlab = "Horsepower", ylab = "Time Taken to Travel 1/4 Mile (sec)")

cor(mtcars$hp, mtcars$qsec, use="complete.obs")
fit = lm(qsec~hp, data=mtcars)
abline(fit,lwd=2)
summary(fit)


# 3.a
install.packages("TeachingDemos")
library(TeachingDemos)

?TeachingDemos

data_IQ = c(114, 100, 104, 89, 102, 91, 114, 114, 103, 105, 108, 130, 120, 132, 111, 128, 118, 119, 86, 72, 111, 103, 74, 112, 107, 103, 98, 96, 112, 112, 93)
hypo_mean = 100
sigma = 15
alpha = 0.05

z.test(data_IQ, hypo_mean, sigma, alternative="two.sided", conf.level= (1-alpha))
