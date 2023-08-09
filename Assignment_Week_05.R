### Build-in Datasets ###

# See available datasets
data()

?cars

# Downloading tseries packages
install.packages("tseries")
library("tseries")
library(help="tseries")

?ice.river

data("ice.river")
ice.river[1:5,]


### Reading Files ###

# Gets current work directory
getwd()

# Sets work directory
setwd("C:/Users/uneth/OneDrive/Documents/R Files")
list.files()


# Reading from a path
myData = read.table(file = "datasets/mydatafile.txt", 
                    header = TRUE, 
                    na.strings = "*", 
                    stringsAsFactors = FALSE)
myData

# Using file.choose()
myData = read.table(file = file.choose(), 
                    header = TRUE, 
                    na.strings = "*", 
                    stringsAsFactors = FALSE)
myData

# Reading from url
url = "http://www.amstat.org/publications/jse/v9n2/4Cdata.txt"
myDataTXT = read.table(url)
myDataTXT[1:5,]


# Reading csv
myDataCSV = read.csv("datasets/BodyFat.csv")
myDataCSV


# Writing data
#write.table(x = myDataTXT, file = "datasets/newdatafile.txt")
write.csv(x = myDataCSV, file = "datasets/newdatafile.csv")


# create a .jpep file
jpeg(filename = "figures/myjpegplot.jpeg")
plot(1:5, 6:10, ylab="a nice ylab", xlab="here's an xlab", main="a saved .jpeg plot")
points(1:5, 10:6, cex=2, pch=4, col=2)
dev.off()

# create a .pdf file
pdf(file = "figures/mypdfplot.pdf")
plot(1:5, 6:10, ylab="a nice ylab", xlab="here's an xlab", main="a saved .pdf plot")
points(1:5, 10:6, cex=2, pch=4, col=2)
dev.off()
