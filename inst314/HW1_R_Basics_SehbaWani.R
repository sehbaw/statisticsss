
#Sehba Wani, INST314, 090522

## Getting Started with R

###########################################################
###########################################################

###########################################################
## Task One: R Overview & Preliminaries
## In this task, you will learn about the R programming
## language and write basic R commands.
###########################################################

  ## i ended up commenting on my code so if you see comments that are new/out of place...that is me :)))
### Basic R Commands

### 1.1: Assignments in R

## Assign x to 1, y to 2 and z to 3
x <- 1
y <- 2
z <- 3

### 1.2: Functions

## Print Hello World
q <- "Hello World"
q

### 1.3: Computations

# Add 17 to 5
17 + 5

## Add 5 to x
x <- "x"
5 + x

## Add 15 to 5 and store it in a variable called y
y <- 15 + 5


## Find the square root of 16 and store it in a variable called y
      #Square root function
y <- sqrt(16)

## Find the square root of 16
sqrt (16)


## Calling variable in R

# Call y, see y value in console

y


# Call x, see x value in console
x



###########################################################
## Task Two: Basic Data Types in R 
## In this task, you will understand the different data types
## in R, and how they are used in R.
###########################################################

### 2.1: Variable Assignment

## Set the variable x to 6 (Numeric Type)
## This is the default. 

## Set the variable z to "Hello" (Character Type)
z <- "Hello"

## Note: R is case sensitive: The variables 'z' and 'Z' can coexist
# in R environment and have different values.

# Set Z to "World"
Z <- "world"

### 2.2: Call Variables

# Call small z
z 

# Call capital Z
Z

### 2.3: Adding Object Together
z + Z


## 2.4: What do you think will be the result of this?

    # either concatenation or an error 

### Data Types

## Numeric

## 2.5: Check the data type of the variable a
a <- 9
typeof(a) ## tried without documentation (just educated guess) and it is typeof()!

## 2.6: Set a variable num to 8.5
num <- 8.5

## Call the variable num
num #can just call it like that ok!
   # This is used to check the data type of a variable

### Integers

## 2.7: Change numeric data type to integer
int1 = as.integer(num)

## Check the data type of the variable int
typeof(int1)

### Character

# Check the data type of the variable w
typeof(w)
## 2.8: Create a character variable from a numeric variable
 p <- 10
## Call the char variable
char 

### Boolean/Logical

## 2.9: Create a logical variable and set it as TRUE
logic_found = TRUE;
logic_found
## Check the data type of log variable
typeof(logic_found)

### Factors

## 2.10: Store movie ratings in a variable called fac
  # only did movie ratings out of five 
fac <- factor(c(4,3,5,1,5,2,1))

## Check the data type
typeof(fac)
## 2.11: Check how many levels and the data type of the levels
levels(fac)
typeof(fac)

## 2.12: Check all variables and objects that have been defined
fac
logic
char
# p
w

###########################################################
## Task Three: Data Structures in R: Vectors
## In this task, you will understand vectors as a data structure
## in R, and how to perform sub-setting on the vector created.
###########################################################

### VECTORS

## 3.1: Create a vector of the marks of 4 students
students <- c(70,85,90,95)
students
## 3.2: Check the data type of the vector
typeof(students)

## 3.3: Check the length of the variable
length (students)

## 3.4: Indexing and Slicing
## Returns the 4th mark
students[c(4)]

  
## Returns the 2nd, 3rd and 4th marks
  #did a range index 
students[2:4]

## (Ex.) What do you think the result will be?
    
  #the 2nd, 3rd, and 4th element of the vector


## 3.5: Create a character vector
students1 <- c("Aisha", "Melika", "Shifa", "Scott")

## 3.6 (Ex.): Check the data type and length of the vector
typeof(students1)
length(students1)

## 3.7 (Ex.): Retrieve the 1st, 2nd and 3rd characters in the char_vec vector
students1[1:3]

## 3.8: Create the variable char_num_vec to take numeric and character types
  # are we supposed to make a vector essentiaily? 
char_num_vec <- c("susan", 4, "melika", 5)
typeof(char_num_vec)

## 3.9 (Ex.) : What do you think will be the data type of the vector?
    # error
# just kidding ran it and it came out as "character" which is the first object in the variable 
## 3.10: Create a vector of odd numbers
odd_nums <- c("1","3","7")


###########################################################
## Task Four: Data Structures in R: Matrices
## In this task, you will understand matrices as a data structure
## in R, and how to perform sub-setting on the matrix created by
## accessing rows and columns of the matrix
###########################################################

### MATRICES

# 4.1: Create matrix with values from marks, 2 rows and 2 columns
marks = matrix(c(70,80,90,95), nrow=2,ncol=2)

# Call the matrix created
marks

## 4.2: Change byrow to TRUE
marks = matrix(c(70,80,90,95), nrow=2,ncol=2, byrow=TRUE)
  #i am not sure if this is the most efficient way to do it...redefine the whole thing but that is how i did it!

# Call the matrix created
marks

# 4.3: Create vector with 9 integers from 1 to 9
     #vector asked for
numbers = c(1,2,3,4,5,6,7,8,9)


# 4.4: Access value on second row, second column
marks[2,2]

# 4.5: Access second row
marks[2,]

# 4.6: Access second column
marks[,2]

# 4.7: Access sub-matrix with components on both 
# first 2 rows and first 2 columns
    #skipping to ask about because I am confused 

# 4.8: Access sub-matrix with components that are 
# not on 3rd row and 3rd column
    #skipping to ask because I am confused 

###########################################################
## Task Five: Data Structures in R: Data frames
## In this task, you will understand data frames as a data structure
## in R, and how to access specific rows and columns of a data frame.
###########################################################

### DATA FRAMES

## 5.1: Create data frame with 2 columns: marks and char_vec
df = data.frame(marks, char_num_vec)
## Look at data frame's overall type
  typeof(df)
  #got list as the type
## 5.2: Check the structure of each variable/feature in the data frame


# 5.3: Look at columns' data types
typeof(df[1,])

# 5.4: Call a column in a data frame
df[1,]

# OR


# 5.5: Create sub data frame with first 3 rows only
    df[3,] #this is wrong 

## 5.6: Create a new data frame with 3 rows and explore it
   df1 = data.frame(marks, char_num_vec, students,students1)


## Call the data frame 
   df1
## Check the data type 
typeof(df1)
#  came out as list 

## 5.7: Create another data frame with 2 rows
df1 = data.frame(marks, char_num_vec, students)


## 5.8: Use rbind and cbind to append new data to an existing dataset
rbind()
## rbind - A row bind appends new values in row fashion


## Create two new columns; Gender and LastName



## cbind - A column bind appends new values in column fashion



## Check the dataframe and its structure


###########################################################
## Task Six: Data Structures in R: Lists
## In this task, you will understand list as a data structure
## in R, and how to perform sub-setting on the list created.
###########################################################

### LISTS

# 6.1: Create a list with 4 objects
r = c(2,3,4,5)


# 6.2: Accessing each object in the list

# Access the first and second objects

 #first object 
r[1] 
r[2]


# (Ex.): Access the third and fourth objects
 r[3]
 r[4]



# 6.3: Call First row of 3rd list's objects.
r[3][1]

###########################################################
## Task Seven: Installing Packages in R
## In this task, you will learn how to install packages in R
## using the R studio console and the install.packages function.
## In addition, you will learn how to set the right working
## directory in R.
###########################################################

### Importing Packages

# 7.1: Install package on computer (from CRAN repository)

# load package in R session


# 7.2: Install readxl package to machine
## install.packages("readxl")


## Load in Rsession to use read_excel() fucntion


### WORKING DIRECTORY

# 7.3: Set working directory (tells R where to import files from/export files to)


# Get working directory



###########################################################
## Task Eight: Importing Datasets into R
## In this task, you will learn how to import different datasets
## into R
###########################################################


### 8.1: Import .Txt with space separated values and explore it

# read.table() function to import .txt files



## See all data


## See first 5 rows


## See last rows


## Check the structure of the data 


## Check the summary of the data


## Change column's type to character
## Sales column is overwritten by 
## "character" version of Sales column


## Change column's type to factor


### 8.2: Import .txt with comma separated values

# read.table() function to import .txt files
# I will add a sep= "," for comma separated files



## Check the summary of the data


## Check the structure of the data


## (Ex.): Change the Tree feature to factor



### 8.3: Import .csv file

# load readr for read_csv() function


#  Use read.csv() to import .csv files and explore it



## (Ex.) Check the data type


## (Ex.) Retrieve the first 5 rows


## (Ex.) Check the number of rows and columns


## (Ex.) Check the structure of the data


## (Ex.) Check the summary of the data 


### 8.4: Import excel document

## Use read_excel() to import xlsx documents


## Note: We can also use Rstudio interface

## Check the data type


# Make the data a proper data frame object

