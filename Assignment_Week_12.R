# Assignment Week 12
# Ethan R Feldman

?Devices
?layout
?quakes
?box

# New device
dev.new(width=9,height=4.5)

# Layout
layMatrix <- matrix(c(1,1,1,1,2,3,4,4),2,4)
layout(mat = layMatrix)
layout.show(n = max(layMatrix))

#Plots
plot(quakes$long,quakes$lat,cex=0.02*quakes$stations,
     xlab="Longitude",ylab="Latitude")
box(which = "figure", lty = "solid")

plot(quakes$mag,quakes$stations,
     xlab="Magnitude",ylab="Stations")
box(which = "figure", lty = "solid")

plot(quakes$depth,quakes$stations,
     xlab="Depth",ylab="Stations")
box(which = "figure", lty = "solid")

hist(quakes$stations, xlab="Stations", main='')
abline(v=mean(quakes$stations),lty=2)
box(which = "figure", lty = "solid")