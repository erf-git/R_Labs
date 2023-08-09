# Ethan R Feldman
# Assignment 4

#1. 
myMatrix = matrix(data = 2:13, nrow = 3, ncol = 4)
myMatrix
as.character(t(myMatrix))


# 2. 
foo <- c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA)
length(foo) # True
which(x=is.na(x=foo)) # False
is.null(x=foo) # False
is.na(x=foo[8])+4/NULL # False, for this one it just returns "numeric(0)" which I don't know if that equals "na"


#3. 
x = -3:3
y = 7:13

xlimits = c(-3,3)
ylimits = c(7,13)

plot(x,y,type="n",main="")

abline(v=xlimits,lty=2,lwd=2)
abline(h=ylimits,lty=2,lwd=2)

arrows(x0=-2.5,y0=12.5,x1=-1,y1=10.5)
arrows(x0=-2.5,y0=10,x1=-1,y1=10)
arrows(x0=-2.5,y0=7.5,x1=-1,y1=9.5)

arrows(x0=2.5,y0=12.5,x1=1,y1=10.5)
arrows(x0=2.5,y0=10,x1=1,y1=10)
arrows(x0=2.5,y0=7.5,x1=1,y1=9.5)

text(x=0,y=10,labels="Something\nProfund")
