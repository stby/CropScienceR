## Introduction
  
  
**What is R?**  
  
  
*R is an environment and programming language for statistical computing and graphics.*

**Reasons to use R:**
  
1. R is free (open-source and cross platform)
2. No pointing and clicking.
3. Reproducibility.
4. Extensible with packages.
5. High-quality graphics.
6. Growing community.

**What we will cover:**

* Introduction to R  
* Data wrangling  
* Data visualisation  
* Generating data analysis reports

**Learning Objectives:**  

* Use RStudio for managing you data analysis. 
* Call functions and find help.
* Understand how to assign objects to variables in R.   
* Understand the different data types in R.    
* Understand the different data structures in R (describe what a vector, matrix, data frame and list are).
* Select data from vectors, matrices, data frames, and lists.  
* Use the tidyverse for data analysis.   
* Filter and arrange observations in a data set.  
* Selecting, add and modify variables.  
* Group and summarise variables.  
* Create plots in R. 
* Create data analysis reports from your R code.  
  
   
  
## Working in RStudio

**What is RStudio?**  
  
  
*RStudio is an Integrated Development Environment (IDE) for R and a great way to interact with R. At its very simplest you can think of it as a text editor to write your scripts to be run in R.*
  
  
We will use RStudio to write our R-scripts, navigate our computer, inspect our data and graphical outputs, and produce high quality reports of our data analysis. 
  
The RStudio interface consists of:
  
1. Source (e.g. an R script, a data set)
2. Environment/History
3. Files/Plots/Packages/Viewer
4. Console  
   
    
Using the *Projects* interface in RStudio is a great way to organise your computational experiments. It is a good idea to be consistent in how you structure your project directory across all your projects.
  
  
> **Action:** Create a new project called R_Workshop and within this new project create a new R script called *R_basics*.
  
  
The working directory is the location where R will look for and save files to. To identify what your current working directory is you can use the command ``` getwd() ```, which will return the full path through the filesystem to your current location. To change the current working directoy you can use the command ``` setwd() ``` or through the RStudio interface (*Session* > *Set Working Directory*). 

Go to the following location and simply copy and paste into your open R_basics.R script.
  
  
``` https://github.com/stby/CropScienceR/blob/master/R_intro_clean.R ```


## Introduction to R

1. **Key features of R**
  + An R script
  + Functions and packages 
  + Basic math
2. **Assigning values/objects to Variables**
3. **Data types in R**
4. **Data structures in R :  Vectors**
  + Creating vectors
  + Naming vectors
  + Calculations with vectors
  + Selecting elements from a vector
5. **Data structures in R :  Matrices**
  + Creating a matrix
  + Naming columns/rows
  + Calculations on matrices
  + Selecting data from a matrix
6. **Data structures in R :  Data Frames**
  + Creating data frames
  + Selecting data from data frames
7. **Data structures in R :  Lists**
  + Creating a list
  + Selecting from a list
  

## Data Wrangling  
  
We are moving from base R to using a convenient package (dplyr) to work with our data. dplyr is part of the  tidyverse, which is used extensively in data analysis. We will learn to use some key commands (verbs) from the dplyr package to wrangle some data - these are:
  
    
1. ``` filter() ```
2. ``` arrange() ```
3. ``` select() ```
  + select_helpers
4. ``` mutate() ```
5. ``` summarise() ```
6. ``` group_by() ```

At the end we will be able to write code to:
  
* Filter and arrange observations in a data set.  
* Selecting, add and modify variables.  
* Group and summarise variables. 

We will use the pipe command alot in our hands-on examples. The ``` %>% ``` command is used in the tidyverse to pipe data to a function or to pipe the output of one function to a second function.


## Data Visualisation  
  
A popular package to generate graphics in R is ggplot2, which is part of the Tidyverse. We will run through the basics of producing a plot and the components that make up a graph - and provide a template for plotting. The basic components of a graph we will look at are:

1. Data for visualisation.
2. Aesthethic mappings (how variables are percieved  - x, y, size, shape, colour, alpha).
3. Geometric objects (what you see on the plot - points, line).
  
At the end we will be able to write code to:

* Produce simple scatter, line and box plots.  
* Display multiple variables on a sinlge plot with different aesthethic mappings.

   
## Generating Data Analysis Reports

RMarkdown is a format for writing reproducible, dynamic reports with R. It can be used to embed R code and results into slideshows, pdfs, and html documents (refer to RMarkdown cheat sheet for a quick introduction).

> **Action:** Open the Markdown_Exc_cl.Rmd file and complete the R code chunks to display the relevant information. 
  
    
## Getting more Information  

The following excellent resources are available to continue your learning:

https://r4ds.had.co.nz  

https://www.datacamp.com 

    
