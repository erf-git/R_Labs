# Ethan R Feldman
# Assignment 3

# 1. 
values = c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)
values[values == 6]
values[values >= 6]
values[values < (6+2)]
values[values != 6]


# 2.
rating = c(7,1,7,10,5,9,10,3,10,8)
rating[(rating > 5)|(rating == 2)]


# 3.
cat("The quick brown fox\n jumped over\nthe lazy dogs")


# 4.a
sex.vec = rep("M", 20)
sex.vec[c(1, 5:7, 12, 14:16)] = "F"
sex.vec

party.vec = rep("National", 20)
party.vec[c(1, 4, 12, 15, 16, 19)] = "Labour"
party.vec[c(6, 9, 11)] = "Greens"
party.vec[c(10, 20)] = "Other"
party.vec


# 4.b
sex.fac = factor(x = sex.vec)
sex.fac

party.fac.levels = c("National", "Labour", "Greens", "Maori", "Other")
party.fac = factor(x = party.vec, levels = party.fac.levels)
party.fac

# It does not make sense to order the data in both cases
# R will automatically arrange the levels in alphabetical order
# For the party factors, I manually put the order in


# 4.c
party.fac[sex.fac == "M"]
sex.fac[party.fac == "National"]


# 4.d
new.sex.fac = factor(x = c("M","M","F","F","F","M"), levels = levels(sex.fac))
c(sex.fac, new.sex.fac)

new.party.fac = factor(x = c("National","Maori","Maori","Labour","Greens","Labour"), levels = levels(party.fac))
c(party.fac, new.party.fac)
