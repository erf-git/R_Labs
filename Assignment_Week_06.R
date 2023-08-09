# Ethan R Feldman
# Week 6 Assignment

# a. 
vec1 <- c(2,1,1,3,2,1,0)
vec2 <- c(3,8,2,2,0,0,0)
vec3 <- c()

for (i in 1:length(vec1)) {
  if (vec1[i]+vec2[i] > 3) {
    vec3 = append(vec3, c(vec1[i]*vec2[i]))
  }
  else {
    vec3 = append(vec3, c(vec1[i]+vec2[i]))
  }
}

print(vec3)

# b.
myNum <- 5
# myNum <- 12
# myNum <- 0

if (myNum == 0) {
  myFac = 1
} else {
  myFac = myNum
  while (myNum > 1) {
    myNum = myNum - 1
    myFac = myFac * (myNum)
  }
}

print(myFac)