#######################################################
# Overview of the tidyverse 
#######################################################

# load the tidyverse - this is a collection of packages

library(tidyverse)

# Load some nice datasets to analyse

library(gapminder)
library(nycflights13)

?gapminder
?flights

# view the data sets with view and open in new window, familiarise yourself with
# the data.

View(gapminder)

# we will refer to observations and variables throughout - our observations will
# be in rows and our variables will be in columns

# we will use commands in the dplyr package to wrangle some data - we will use
# the flights and gapminder data sets. The %>% command is used to pipe data to a
# function or to pipe the output of one function to be the input of another
# function


#######################################################
# FILTER
#######################################################

# the first function we will use is filter() on the gapminder dataset - this
# enables us to select out some observations based on a variable
# remember the comparison operators >, <, <=, >=, ==, !=

gapminder

# we are only interested in looking at data from the year 2002 - we need to
# filter out observations for the year 2002


# we are only interested in looking at data from Ireland - we need to
# filter out observations for the country Ireland



# we can also filter for two variables 
# we are only interested in looking at data from Ireland in 2002 - we need to
# filter out observations for the country Ireland and the year 2002


  
  

#####  TRY IT OUT  ##### 
# go to the flights data  - you want look at data for 
# the 1st of January (month 1, day 1)



# lets filter for flights whose departure was delayed by more than 120 minutes



####
####
####


#######################################################
# ARRANGE
#######################################################

# we can sort our data using the arrange() function, this sorts a table based
# on a vairable

# we want to sort by life expectancy (lifeExp) 



# we can sort in descencding order, e.g. lets sort by life expectancy from highest to lowest



# we can start to combine functions (verbs) to accomplish more complicated tasks
# e.g. we want to focus on observations from the year 2002, and arrange these
# observations according to lifeExp from highest to lowest to determine what
# countries had the greatest life expectancy in 2002


  
  

#####  TRY IT OUT  ##### 
# Move to the flights data and find out what flights had the greatest departure
# delay. This inolves arranging data according to dep_delay in descending order.



# find the flight with the greatest delay time originating in JFK in March (month 3)
# hint : combine filter and arrange


  

####
####
####
  


#######################################################
# SELECT
#######################################################


# in some data sets you can have many variables - think of a genotyping data
# where we can have hundreds of thousands of variables (SNP positions). In this
# case it is very useful to have a function to select out variables (e.g. select
# SNPs in a single gene). We can use the select() function to select out specific
# variables

# we want to create a new table with only data for country and life expectancy
# - we can select these variables out from the gapminder dataset



# i dont like the way the data is arranged - lets put the continent first



# we can also rename variables using the rename() function
# i dont like a variable name - lets rename a variable using the rename() function, 
# e.g. lifeExp to yearsToDeath 



#####  TRY IT OUT  ##### 
# lets move to the flights data and select out month, day, departure airport and
# departure delay variables (month, day, origin, dep_delay) and then filter for
# the departure airport JFK, and sort by dep_delay 






####
####
####


#######################################################
# SELECT HELPERS
#######################################################

# These functions allow you to select variables based on their names.
# starts_with(): Starts with a prefix.
# ends_with(): Ends with a suffix.
# contains(): Contains a literal string.
# matches(): Matches a regular expression.
# num_range(): Matches a numerical range like x01, x02, x03.
# one_of(): Matches variable names in a character vector.
# everything(): Matches all variables.


# we can use the select helpers with select to help us select our variables

# lets find and extract variables with life in their name



# lets extract variables that match gdpPercap 





#####  TRY IT OUT  ##### 
# go to the flights data set and select out variables that match "year",
# "month", "day", "dep_delay", "arr_delay" - first create a vector and use the select
# helper one_of





####
####
####


#######################################################
# MUTATE
#######################################################


# mutate will enable you change a variable or add a new variable that is a
# fucntion of an exisitng variable

# lets mutate a variable in the gapminder data set - i want to convert
# population numbers (pop variable) to per million



# lets mutate to add a new variable called total_GDP
# which is determined by multiplying gdpPercap by the population
# the new variable is always added at the end of the data set



# if you would like to only keep the new variable you can use the transmute
# function - lets mutate and only keep the mutated variable (total_GDP)




# remember that we can string dplyr verbs together, e.g. mutate to create a total
# gdp variable called total_GDP then lets filter for Irish observations and
# arrange it from highest to lowest total_GDP



  

#####  TRY IT OUT  ##### 
# go to the flights data set 
# select out the variables year, dep_delay, arr_delay, flight and assign it to a new
# object called new_flights (remember the assignment operator), mutate a new
# variable called recover showing the time clawed back over flights (dep_delay -
# arr_delay), mutate a new variable called recover_hours with recover/60
# arrange this to find the flight with greatest recovery in hours


  



####
####
####


#######################################################
# SUMMARISE
#######################################################


# summarise allows us to collapse data to a single row after applying some
# caluclation on observations within a vairable

# lets summarise the lifeExpt in the gapminder dataset and get a mean lifeExp
# and assign it to meanLifeExp


# lets determine a mean lifeExp for Ireland 




# lets summarise for mean Irish lifeExpt, and total gdpPercap



#####  TRY IT OUT  ##### 
# go to the flights data set
# summarise the data and extract the maximum departure delay in hrs, the 
# minimum arrival delay, the median departure delay,  give them useful names



# determine the total departure delay time (dep_delay) on flights exiting JFK in
# month 1




####
####
####


#######################################################
# GROUP_BY
#######################################################

# using summarise together with group_by() is something you will use alot you
# are grouping by observations in a variable and applying summarise to each
# group

# lets summarise mean life exp and max gdp by country in the gapminder data set




# lets filter by continent first, group by country, and summarise max life exp
# and max gdp



# lets group by continent and year and summarise max life exp and max gdp, and 
# lets get the number of observations in the current group - use the function n() 
# n() can be used within summarise, mutate, filter




#####  TRY IT OUT  ##### 
# go to the flights data set
# lets look at the relationship between distance and average delay
# group by destination and summarise to get (1) group counts (assign to counts)
# and (2) mean distance (assign to dist) and (3) mean arrival delay (assign to meanArrDelay)
# filter for counts above 100 and arrange by distance from greatest to smallest



# repeat the above but remove the outlier airport (double the distance of others)



# use some more summary functions e.g. group by destination (dest) and summarise
# standard deviation of arr_delay - the function for this is sd()



# the n_distinct function can be used to quickly count the number of unique
# records group by destination (dest) and summarise the number of uniqe carriers
# for each destination and assign to distinctCarriers




####
####
####




