# section 1 assessment
# question 1
(-b+sqrt(b^2-(4*a*c)))/(2*a)
a <-2
b <- -1
c <- -4
(-b-sqrt(b^2-(4*a*c)))/(2*a)

# question 2
log(1024,4)

#question 3a & 3b
library(dslabs)
data(movielens)
str(movielens)
length(movielens$movieId)
names(movielens)

# question 3c & 3d
class(movielens$title)
class(movielens$genres)

# question 4
nlevels(movielens$genres)
