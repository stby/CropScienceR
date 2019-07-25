#######################################################
# In its most basic form, R can be used as a calculator 
#######################################################

# addition 


# subtraction


# multiplication


# division


# raise to power of


# modulo


#####  TRY IT OUT  ##### 
# add the result of multiplying 5 by 3 with the result 
# of multiplying 5 by 5


####
####
####


#######################################################
# Assigning values/objects to variables in R
#######################################################

# A variable is used to store a value or object that 
# can be accessed later by calling its name
# we use the assignment operator <- to assign values/objects to variables

# assign 42 to the variable answer


# print the value of answer to the screen 


# assign the value 3 to a variable time_hrs


# we can use variables in our calculations
# convert time_hrs to minutes and assign to a
# variable called time_mins


#####  TRY IT OUT  ##### 
# we have been counting butterlflies, bumblebees and
# dragonflies in Oak Park and found 100, 150, 20 respectively.
# create three variables called butteflies, bumblebees and
# dragonflies and assign our counts to each variable.


# Next, create a new variable called insects and 
# calculate how many insects in total you found
# and print the result to the screen


####
####
####


#######################################################
# Data types in R
#######################################################

# different data types exist in R, e.g. numerics, logical,
# and characters

# give a numeric_example


# give a character_example


# give a logic_example 


# try and add numeric_example to character_example


# this fails because the data types do not match, 
# one is a numeric and the other is a character

# we can determine the class of data types using the class() function
# determine the class of examples



#####  TRY IT OUT  ##### 
# find the data type for butterflies, bumblebees,
# dragonflies, and insects from earlier - these vairables are
# still available to you in your current R session


####
####
####


#######################################################
# Vectors in R
#######################################################

# we use vectors in R to store data - a vector
# contains data of a single type (e.g. all numeric values)

# use the combine function c(), to create a numeric vector (11,12,13,12)
# and assign it to the variable my_yields


# create a character vector (clover, beans, barley) and 
# assign it to the variable my_crops


#####  TRY IT OUT  ##### 
# you have measured grain yield (t/ha) on five winter barley varieties
# under drought stress and irrigation.
# in the irrigation treatment yields are 17.4, 14.2, 15.2, 10.3, 15.6
# in the drought treatment yields are 15.4, 12.2, 11.2, 6.3, 14.9
# create a vector for irrigation yields and assign to yield_irr
# and create a second vector for drought yields and assign to yield_drou
# print your new vectors to the screen


####
####
####


#######################################################
# Naming a Vector
#######################################################

# it can be useful to name elements in your vector so
# that you know what they refer to. This can be accomplished
# very easily with the names function, names()

# create a vector of monthly average temperatures and assign to mth_aver


# use the names() function to assign names to vector elements


# inspect the result


#####  TRY IT OUT  ##### 
# Go back to your yield example and give variety names 
# (Carola, Frost, Goldrush, Princess, and Malta) to
# your yield data in both  vectors - but be lazy - first
# create a vector of the variety names and then use
# this vector to name you yield data in yield_irr and yield_drou
# inspect the results


####
####
####


#######################################################
# Calculations with Vectors
#######################################################


# calculations on vectors are done element-wise
# this is a key concept to understand

# create a vector of number of apples in three bags and assign to apples
# and create a vector of number of kiwis in three bags and assign to kiwis


# add the two vectors together and assign to the variable fruit
# inspect the results - addition is element wise


#####  TRY IT OUT  ##### 
# Go back to your yield example and figure out the difference
# between yield under irrigated (yield_irr) and drought (yield_drou) 
# conditions for each variety and assing to the variable yield_diff
# inspect the results


# finally calculate the total yield_diff across all varieties
# and assign to the variable total_yield_diff


####
####
####


#######################################################
# More calculations with Vectors
#######################################################

# comparison of vectors is also done element-wise

# create two vectors (average monthly temperature in France and Ireland) 
# and see if France is hotter than Ireland each month



#####  TRY IT OUT  ##### 
# Go back to your grain yield example and see if the
# yields under drought (yield_drou) are greater than 
# irrigated (yield_irr) for any of the varieties.



####
####
####


#######################################################
# Selecting elements of a Vector
#######################################################

# we can select out elements of a vector by providing indices
# in square brackets

# create a vector of insects and assign to the variable insect


# select out the third element of the vector insect


# select out more than one element of a vector using c() 
# select out 1st and 3rd element of insect


# we can also select a range using the colon (:)
# very useful to remember this shortcut
# select elements 1 through 3 from insect


# we can also select using element names
# create a vector of insect counts and assign to cts
# use the insect vector created above to give names to cts
# select out counts for butterflies, and aphids



# we can also select using logical comparison operators (<, >, <=, >=, ==, !=)
# use the cts to select out insects with greater than 100 cts
# first create a vector of comparison results and assign to 
# variable cts100, print new variable


# second use this variable to select out
# the appropriate data from cts (print new variable)



#####  TRY IT OUT  ##### 
# Go back to your grain yield example and select out the
# the irrigated yield (yield_irr) for varieties that have less than or 
# equal to 1 tonne drop in grain yield under drought (yield_diff)


####
####
####


#######################################################
# Matrices in R
#######################################################

# a matrix consists of rows and columns of the same data type
# (e.g. all numeric). A matrix can be created using the matrix 
# function matrix().
# the function takes three arguments
# matrix(data, byrow = , nrow = )

# create a matrix with elements 1 to 25 organised by row
# and put values into 5 rows and assign it to mat1


# you can name the rows and columns of a matrix similiar to
# how you named the elenments of a vector. Here you can use the
# rownames() and colnames() functions.

# lets create a vector of column names (col_name_vec) and name
# the columns of mat1 using this vector


#####  TRY IT OUT  ##### 
# Create a matrix of plant disease scores across two years
# and four locations (carlow, kilkenny, dublin, kildare).
# first create a vector for each location with two elements
# the first element is 2018 scores and the second element is 2019 scores
# e.g. carlow <- c(78, 92) 
# the full data is :
# carlow 78 92
# kilkenny 68 88
# dublin 52 74
# kildare 80 95




# next combine these vectors and assign to a variable all_sites and 
# print it to the screen for inspection



# next create a matrix with all_sites (you want two columns - one with 
# 2018 scores and one with 2019 scores) and assign to all_sites_mat



# finally create a vector of row names and a vector of column
# names and label all_sites_mat


####
####
####

#######################################################
# Calculations with Matrices in R
#######################################################

# we can easily make caluclations on matrices using
# some useful R functions 

# if we want to calculate the sum of the rows or 
# columns in a matrix then we can use the functions
# rowSums() and colSums() , e.g. on mat1 that we created above


# we can also use colMeans() and rowMeans()



#####  TRY IT OUT  #####
# calculate the mean 2018 and 2019 scores
# for all_sites across all locations


####
####
####

# we can also do basic arithmetic on matrices - this 
# is done element wise
# e.g. lets add 5 to elements in mat1 and assign it to mat2


# we can also do calculations with more than one matrix - 
# again this will be element-wise
# e.g. lets add mat1 and mat2 and assign to mat3



#####  TRY IT OUT  #####
# using the all_sites_mat matrix convert values to a 0-10
# scale by dividng each element in the matrix by 10


# lets say you get some new data (e.g. 2020) 
# add this to your matrix to update it 
# need a new function to do this cbind() - column bind


####
####
####


#######################################################
# Selecting data from Matrices in R
#######################################################

# when selecting elements from a vector you used square brackets [ ]
# the same applies to matrices - there is one difference - a vector was
# one dimensional but a matrix is two-dimensional. The two-dimensions
# are supplied as row, column coordinates 

# e.g. lets select the element from row 2 and column 3 of mat3


# lets select all elements of row 1


# lets select all elements of column 2



#####  TRY IT OUT  #####
# select out the disease scores in Kilkenny 
# for 2019 from your all_sites_mat matrix 


####
####
####


#######################################################
# Data Frames in R
#######################################################

# a data frame represents data in the form of a table
# columns are vectors and all have the same length
# as each column is a vector it must contain data of the
# same type - however - different columns (vectors) in a 
# a data frame can have different data types 

# lets look at example built in data set (iris)


# its a big data frame - lets look at the first few rows - NEW FUNCTION head() 


# or the last few rows - NEW FUNCTION tail()


# it can be useful to look at the structure of the data frame - NEW FUNCTION str()


# a factor stores categorical variables (and not continous variables)


# we can create a data frame in R much the same way we 
# created our matrix - however - here we use the
# data.frame() function 

seedling <- c("TP0011", "TP0015", "TP0110", "TP0290", "TP0389")
yield <- c(8.01, 8.34, 10.99, 11.09, 10.11)
taste <- c("sweet", "bitter", "sweet", "bitter", "bitter")


# investigate resulting data.frame


# typically you will read in tabular data that has been collected
# in a spreadsheet - we will learn more later about reading data into R 


#######################################################
# Selecting data from data frames in R
#######################################################

# this is similar to vectors and matrices - again use the 
# square brackets and provide rwo, column coordinates

# select out taste for seedling TP0011



#####  TRY IT OUT  #####
# using the built in iris data frame
# print out the element in row 4 and column 5


# next assign Petal Widths to a variable named petalWidth and 
# investigate your result


####
####
####


# there is a shortcut for selecting out columns from data frame
# use the dollar sign e.g. select out Petal.Length


####
####
####


#######################################################
# Lists in R
#######################################################

# we now know what vectors, matrices, and data frames are,
# the last data structure we will look at is a list.
# a list can contain a vector, a matrix, a dataframe, which may
# or may not be connected in some way. It enables you to gather 
# different objects together under one name

# lets create some vectors
vect_char <- c("car", "bike", "boat", "airplane")
vect_num <- c(3, 5)

# lets create a matrix
mat_one <- matrix(25, byrow = TRUE, nrow = 5)

# lets create a data frame
iris_head <- head(iris)

# all of the above are very different - different data types and different lengths
# we create a list with the list() function and assign to my_list


# inspect the my_list



# the list objects can be easily named within list() function



#####  TRY IT OUT  #####
# build your own list that contains
# 1. a vector of numbers between 1 and 20 (remember the colon is your friend!)
# 2. the last 10 rows of the iris data set (remember tail - check the 
# help page for option to get last 10)
# 3. a matrix with 5 columns and three rows with 1 -15 by row
# assign each object in the list a meaningful name


# you can easily add to a list, e.g add the first 10 rows
# of the PlantGrowth data set to the above list as a new component

####
####
####


#######################################################
# Selecting data from lists in R
#######################################################

# selecting from lists is a little bit more complex than
# selecting from vectors, matrices, and data frames - in lists,
# we may want to select elements from specific components
# of the list - however, we still achieve this with square
# brackets

# if we want to select the second component of my_list
# we can do so like this


# we could also do this by name


# if you inspect the my_list data set you will see 
# a dollar sign in fron of components and you can select with
# this also - e.g. select iris from my_list



# you can also select elements from a specific [[component]][element]
# component e.g. select Species from the Iris component



#####  TRY IT OUT  #####
# select the element in the 2nd row and 5th column
# from the matrix component (new_mat) in my_list_two


####
####
####

