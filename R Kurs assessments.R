#section 1 assessment
#question 1
(-b+sqrt(b^2-(4*a*c)))/(2*a)
a <-2
b <- -1
c <- -4
(-b-sqrt(b^2-(4*a*c)))/(2*a)

#question 2
log(1024,4)

#question 3a & 3b
library(dslabs)
data(movielens)
str(movielens)
length(movielens$movieId)
names(movielens)

#question 3c & 3d
class(movielens$title)
class(movielens$genres)

#question 4
nlevels(movielens$genres)


#section 2 assessment
#question 1
x <- c(2,43,27,96,18)
sort(x)
order(x)
rank(x)

#question 2
min(x)
which.min(x)
max(x)
which.max(x)

#question 3
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
time <- time/60
speed <- distance/time
time
speed


#section 3 assessment
library(dslabs)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers

#question 1
library(dplyr)
average <- heights %>% summarize(average = mean(height))
average
ind <- c(heights$height > 68.3)
sum(ind)

#question 2
ind2 <- c(heights$height > 68.3 & heights$sex == "Female")
sum(ind2)

#question 3
ind3 <- c(heights$sex == "Female")
sum(ind3)
f <- sum(ind3)/1050
f

#question 4a
min(heights$height)

#question 4b
match (c("50"), heights$height)

#question 4c
heights$sex[1032]

#question 5a
max(heights$height)

#question 5b
x <- 50:82

#question 5c
sum(!(x %in% heights$height))

#question 6
heights2 <- heights %>% mutate(ht_cm = height*2.54)

#question 6a
heights2$ht_cm[18]

#question 6b
heights2 %>% summarize(average = mean(ht_cm))

#question 7
females <- heights2 %>% filter(sex == "Female")

#question 7a
nrow(females)

#question 7b
females %>% summarize(average=mean(ht_cm))

#question 8
library(dslabs)
data(olive)
head(olive)
plot (olive$palmitic, olive$palmitoleic)

#question 9
hist(olive$eicosenoic)

#question 10
boxplot(palmitic~region, data=olive)
