# Week 7 Assignment 
# Ethan R Feldman

# Question 1: we have a sample of 30 tax accountants from all the states and 
# territories of Australia1 and their individual state of origin is specified 
# by a character vector of state mnemonics as

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa",
           "qld", "vic", "nsw", "vic", "qld", "qld", "sa", "tas",
           "sa", "nt", "wa", "vic", "qld", "nsw", "nsw", "wa",
           "sa", "act", "nsw", "vic", "vic", "act")

# a. Use factor function to create a new object name statef
statef = factor(state)

# b. Use the levels() function to show how many levels or factors in this data set
levels(statef)


# Question 2: 

df_employees = data.frame(
  employee = c('Johne Doe', 'Peter Gynn', 'Jolie Hope'),
  salary = c(21000, 234000, 268000),
  age = c(34, 43, 37),
  startDate = c(as.Date('2010-11-1'), as.Date('2008-3-25'), as.Date('2007-3-14'))
)

# a. Based on the table below, please create a data frame and use str() function 
# to look at the structure of the data frame
str(df_employees)

# b. Use print() function to show your data frame
print(df_employees)


# Question 3: Create the following data frame and merge the two data frame based 
# on the requirements below

df_employees_a = data.frame(
  employeeID = c(1,2,3,4,5),
  employeeName = c('Rick', 'Dan', 'Michelle', 'Ryan', 'Gary'),
  salary = c(623, 515, 611, 729, 843),
  startDate = c(as.Date('2012-01-01'), as.Date('2013-09-23'), as.Date('2014-11-15'), as.Date('2014-05-11'), as.Date('2015-03-27')),
  dept = c('IT', 'Operations', 'IT', 'HR', 'Finance')
)

df_employees_b = data.frame(
  employeeID = c(6,7,8),
  employeeName = c('Rasmi', 'Pranab', 'Tusar'),
  salary = c(578, 72, 632),
  startDate = c(as.Date('2013-05-21'), as.Date('2013-07-30'), as.Date('2014-06-17')),
  dept = c('IT', 'Operations', 'Finance')
)

# a. Merge table 1 and table 2 by employee name use full outer join
merge(df_employees_a, df_employees_b, by='employeeName', all=T)

# b. Merge table 1 and table 2 by employee name use natural join
merge(df_employees_a, df_employees_b, by='employeeName', all=F)
