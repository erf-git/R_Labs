# Assignment Week 13
# Ethan R Feldman

#install.packages("tidyverse")
#install.packages("gridExtra")
#install.packages("ggvis")

library(MASS)
?UScereal

# 1. 
cereal_df = data.frame(UScereal)
head(cereal_df)

# 1.a
cereal_df$mfr

levels(cereal_df$mfr) = c(levels(cereal_df$mfr), 'Kelloggs')
levels(cereal_df$mfr) = c(levels(cereal_df$mfr), 'General Mills')
levels(cereal_df$mfr) = c(levels(cereal_df$mfr), 'Other')

cereal_df$mfr[cereal_df$mfr == 'K'] = 'Kelloggs'
cereal_df$mfr[cereal_df$mfr == 'G'] = 'General Mills'
cereal_df$mfr[cereal_df$mfr != 'Kelloggs' & cereal_df$mfr != 'General Mills'] = 'Other'

factor(cereal_df$mfr)

# 1.b
cereal_df$shelf = as.factor(cereal_df$shelf)
cereal_df$shelf


# 2.
library(ggplot2)
library(gridExtra)
cereal_df

# 2.a
gg1 <- ggplot(cereal_df, aes(x=calories, y=protein)) +
  geom_point(aes(col=shelf, shape=mfr)) +
  labs(x="Calories", y="Protein")
gg1

gg2 <- ggplot(cereal_df, aes(x=calories, fill=shelf)) +
  geom_density(alpha=0.5) +
  labs(x="Calories", y="Kernel Estimate")
gg2 

# 2.b
grid.arrange(gg1,gg2)
