#Feb 1st (Mon)
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(ggplot2)
```

```{r}
mtcars
```
```{r}
ggplot(mtcars, aes(mpg)) +
  geom_histogram(binwidth = 3, 
                 center = 11.5) #15: no trend, 1: too many empty bins

x <- 5
x <- 4
y <- "hello World"
z <- 10
#vector  (컨카티네)

x <- c(4, 5, 6, 7)
y <- c(10, 20, 30)
x+y
x + 2

x
x + c(2,4)
#recycling in R
x + 5
x + c(5) #recycling vector 5
x + c(5, 5, 5, 5)

a <- "Hello" #assigning the value
a
b <- c("Hello", "how", "are", "you?")
b
x[1]
b[1]
#selectranges
1:10 #1thro10
4:6
b[2:4]
#What is "index"?
b[1]
#logic not logistics
library(tidyverse)
data <- tibble(Sally = x, John = b)
data <- tibble(numbers = x, strings = b)
data <- tibble(
  words = c("Hello", "how", "am", "I"),
  wordlength = c(5, 3, 2, 1), 
  capitalized = c(TRUE, FALSE, FALSE, FALSE)
)
data

#tibble = a function to make a dataframe

#types of variables
#dbl = doubles (numbers)
#lgl = logical (True, False)

# = assigning the same in a function ( = in other words, naming fuction)
# <- assigning values
data$words

data$words[data$capitalized]
data$words[data$wordlength > 2]
data$wordlength 
data$wordlength == 2
# == comparison
data$words[data$wordlength == 2]

data$wordlength > 2
data$words[data$wordlength > 2]


ggplot(iris, 
       aes(Sepal.Length, Sepal.Width, 
                 color = Sepal.Length > 6.5
           )) +
  geom_point()

ggplot(iris, 
       aes(Sepal.Length, Sepal.Width, 
           color = Sepal.Width > Sepal.Length / 2
       )) +
  geom_point()

ggplot(iris, aes(x = Sepal.Length))




