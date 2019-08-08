#######################################################
# Overview of GGPLOT
#######################################################

# load the tidyverse - this is a collection of packages

library(tidyverse)

# we will use the following datasets for anlaysis

library(gapminder)
library(nycflights13)

?gapminder
?flights
?mpg

# ggplot2 is a package within the tidyverse for visualising data
# once you start with the basics you can build on it to produce
# very nice publication ready plots

# you can load the ggplot2 package directly or simply load the 
# complete tidyverse 


#######################################################
# A Template for Plotting
#######################################################

# create an object gapminder_2007 with observations only for 2007

gapminder_2007 <- gapminder %>%
  filter(year == 2007)

# lets plot the gdpPerCap (x-axis) against the lifeExp (y-axis)



# this can become a template for our plotting

 ggplot(data = <DATA>) + 
   aes(<MAPPINGS>) +
   <GEOM_FUNCTION>

# the grammar of graphics
# the components that make up the above plot are data for visualisation, 
# a set of aesthethic mappings (how variables are percieved), and 
# a geometric object (what you see on the plot - e.g. points, line). 


#####  TRY IT OUT  ##### 
# give it a go on some data - use the mpg data set which you
# already loaded when you loaded the tidyverse package
# have a look at the mpg data - use View and ?mpg

View(mpg)

# do bigger engines have lower fuel efficiency?
# plot fuel efficiency (hwy) on the y-axis and
# engine size (displ) on the x-axis

 

####
####
####

#######################################################
# Aesthetic Mappings
#######################################################

# we can make our plots more informative by adding more aesthetic mappings lets
# go back to our gapminder data plot and add some extra information

ggplot(data = gapminder_2007) + 
  aes(x = gdpPercap, y = lifeExp) +
  geom_point() 

# firstly it would make sense to put gdpPercap on a log scale. this is easy
# using scale_x_log10()



# extra information can be added by specifying additional aesthetics
# in our gapminder data set we have a continent variable - it might
# be pretty cool to identify our points according to continent -
# we can supply this as a color aesthetic 




# lets say that we also want to understand the population size on
# this plot - we can also supply this as a size aesthetic




# so  our aesthetics are x,y, color, shape, alpha, and size and we can assign different
# variables to these aesthetics note that some aesthetics will have a maximum
# number of classes, e.g. shape has six classes


#####  TRY IT OUT  ##### 
# give it a go on the mpg data set - plot fuel efficiency (hwy) on the y-axis and
# engine size (displ) on the x-axis, and color according to car class and size
# according to cylinder (cyl)




####
####
####

#######################################################
# Facets
#######################################################

# Faceting allows you to add addtional variables by splitting a plot in facets
# (subplots).

# Lets go back to our basic gapminder plot of gdpPercap against lifeExp

ggplot(data = gapminder_2007) + 
  aes(x = gdpPercap, y = lifeExp) +
  geom_point() +
  scale_x_log10()

# lets break it apart by continent using facet_wrap() - the first argument is a
# formula, created with ~ followed by variable name



# we can also break apart our plot by two variables using facet_grid() and
# supplying both variables, (var1 ~ var2)  - lets plot gdpPerCap against lifeExp
# for the entire gapminder data set and facet by continent and year


  

#####  TRY IT OUT  ##### 
# go to the mpg data set and plot engine size (displ) on x and fuel efficiency
# (hwy) on y, colour by cylinder (cyl) and facet by car class (class). To make it look tidy only put
# two-plots on each row (look up facet_wrap help to see how to achieve this)




####
####
####


#######################################################
# Geometric Objects
#######################################################

# what we see on the plot - so far we have just being using points geom_point()
# We will go through some of the common geometric objects you will likely use.

# we will start with a line plot using geom_line() lets create a data set from
# gapminder summarising mean life exptancy by year and continent

gapminder_yr_ct <- gapminder %>%
  group_by(continent, year) %>%
  summarise(counts = n(),
            meanLifeExp = mean(lifeExp))


# lets look at the change in life expectancy over years in each continent
# lets plot year on x-axis and meanLifeExp on y-axis, adding a colour aesthetic
# for the continent variable




# lets add a title and some x/y labels using labs() - see ?labs for more information 




# lets create a boxplot with the gapminder_2007 data with continent on x-axis
# and lifeExp on y-axis




#####  TRY IT OUT  ##### 

# Go to the mpg data set and produce a boxplot with car class (class) on x-axis
# and fuel efficiency (hwy) on the y-axis





