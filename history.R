cc[1]
monitor_data[[1]][1]
monitor_data[[1]][1,1]
monitor_data[[1]][1,]
monitor_data[[1]][cc[[1]],]
row(monitor_data[[1]][cc[[1]],])
monitor_data[[1]][cc[[1]],]
length(monitor_data[[1]][cc[[1]],])
nrow(monitor_data[[1]][cc[[1]],])
data1[complete.cases(data1),]
nrow(data1[complete.cases(data1),])
complete <- function(directory, id = 1:332) {
## 'directory' is a character vector of length 1 indicating
## the location of the CSV files
## 'id' is an integer vector indicating the monitor ID numbers
## to be used
## Return a data frame of the form:
## id nobs
## 1  117
## 2  1041
## ...
## where 'id' is the monitor ID number and 'nobs' is the
## number of complete cases
files_list <- list.files(directory, full.names=TRUE)
monitor_data <- lapply(files_list[id], read.csv)
nobs <- numeric(length(id))
for (i in id) {
data <- monitor_data[[i]]
nobs[i] <- nrow(data[complete.cases(data), 1])
}
data.frame(id, nobs)
}
complete("specdata", c(1, 10))
nobs <- numeric(length(id))
data <- monitor_data[[1]]
nobs[1] <- nrow(data[complete.cases(data), 1])
nrow(data[complete.cases(data), 1])
nrow(data[complete.cases(data), ])
complete <- function(directory, id = 1:332) {
## 'directory' is a character vector of length 1 indicating
## the location of the CSV files
## 'id' is an integer vector indicating the monitor ID numbers
## to be used
## Return a data frame of the form:
## id nobs
## 1  117
## 2  1041
## ...
## where 'id' is the monitor ID number and 'nobs' is the
## number of complete cases
files_list <- list.files(directory, full.names=TRUE)
monitor_data <- lapply(files_list[id], read.csv)
nobs <- numeric(length(id))
for (i in id) {
data <- monitor_data[[i]]
nobs[i] <- nrow(data[complete.cases(data), ])
}
data.frame(id, nobs)
}
complete("specdata", c(1, 10))
data <- monitor_data[[1]]
nobs[1] <- nrow(data[complete.cases(data), 1])
nobs[1] <- nrow(data[complete.cases(data), ])
data <- monitor_data[[2]]
nobs[2] <- nrow(data[complete.cases(data), ])
id
data.frame(id, nobs)
for (i in id) { i }
for (i in id) { i }
for (i in id) { i }
complete("specdata", c(1, 10))
complete <- function(directory, id = 1:332) {
## 'directory' is a character vector of length 1 indicating
## the location of the CSV files
## 'id' is an integer vector indicating the monitor ID numbers
## to be used
## Return a data frame of the form:
## id nobs
## 1  117
## 2  1041
## ...
## where 'id' is the monitor ID number and 'nobs' is the
## number of complete cases
files_list <- list.files(directory, full.names=TRUE)
monitor_data <- lapply(files_list[id], read.csv)
nobs <- numeric(length(id))
for (i in seq_along(id)) {
data <- monitor_data[[i]]
nobs[i] <- nrow(data[complete.cases(data), ])
}
data.frame(id, nobs)
}
complete("specdata", c(1, 10))
complete("specdata", 30:25)
nrow(data[complete.cases(data), ])
length(data[complete.cases(data), 1])
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
source("submitscript1.R")
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
submit()
2
submit()
submit()
submit()
submit()
submit()
submit()
submit()
?cor
?lapply
complete("specdata", 30:25)
obs <- complete("specdata", 30:25)
obs[i,]
obs[1,]
obs[1, "nobs"]
monitor_data[[1]]
ata <- monitor_data[[1]]
data <- monitor_data[[1]]
data[complete.cases(data), "sulfate"]
data[complete.cases(data), "nitrate"]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
cor(x,y)
obs <- complete("specdata")
obs
data <- monitor_data[[2]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
cor(x,y)
cor(y,x)
corr <- function(directory, threshold = 0) {
## 'directory' is a character vector of length 1 indicating
## the location of the CSV files
## 'threshold' is a numeric vector of length 1 indicating the
## number of completely observed observations (on all
## variables) required to compute the correlation between
## nitrate and sulfate; the default is 0
## Return a numeric vector of correlations
files_list <- list.files(directory, full.names=TRUE)
monitor_data <- lapply(files_list[id], read.csv)
obs <- complete(directory)
cor <- numeric()
for (i in seq_along(obs)) {
if (obs[i, "nobs"] >= threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
cor <- c(cor, corr(x, y))
}
}
cor
}
corr("specdata", 5000)
corr <- function(directory, threshold = 0) {
## 'directory' is a character vector of length 1 indicating
## the location of the CSV files
## 'threshold' is a numeric vector of length 1 indicating the
## number of completely observed observations (on all
## variables) required to compute the correlation between
## nitrate and sulfate; the default is 0
## Return a numeric vector of correlations
files_list <- list.files(directory, full.names=TRUE)
monitor_data <- lapply(files_list[id], read.csv)
obs <- complete(directory)
cor <- numeric()
for (i in seq_along(obs)) {
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
cor <- c(cor, corr(x, y))
}
}
cor
}
corr("specdata", 150)
corr("specdata", 150)
corr <- function(directory, threshold = 0) {
## 'directory' is a character vector of length 1 indicating
## the location of the CSV files
## 'threshold' is a numeric vector of length 1 indicating the
## number of completely observed observations (on all
## variables) required to compute the correlation between
## nitrate and sulfate; the default is 0
## Return a numeric vector of correlations
files_list <- list.files(directory, full.names=TRUE)
monitor_data <- lapply(files_list[id], read.csv)
obs <- complete(directory)
corxy <- numeric()
for (i in seq_along(obs)) {
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
}
corxy
}
corr("specdata", 150)
i <- 1
corxy <- numeric()
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
threshold <- 150
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
corxy
i <- i + 1
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
corxy
i <- i + 1
obs[i, "nobs"]
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
nrow(obs)
corr <- function(directory, threshold = 0) {
## 'directory' is a character vector of length 1 indicating
## the location of the CSV files
## 'threshold' is a numeric vector of length 1 indicating the
## number of completely observed observations (on all
## variables) required to compute the correlation between
## nitrate and sulfate; the default is 0
## Return a numeric vector of correlations
files_list <- list.files(directory, full.names=TRUE)
monitor_data <- lapply(files_list[id], read.csv)
obs <- complete(directory)
corxy <- numeric()
for (i in nrow(obs)) {
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
}
corxy
}
corr("specdata", 150)
monitor_data <- lapply(files_list[id], read.csv)
obs[i, "nobs"]
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
i
(directory, full.names=TRUE)
files_list <- list.files(directory, full.names=TRUE)
monitor_data <- lapply(files_list[id], read.csv)
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
length(monitor_data)
directory
corr <- function(directory, threshold = 0) {
## 'directory' is a character vector of length 1 indicating
## the location of the CSV files
## 'threshold' is a numeric vector of length 1 indicating the
## number of completely observed observations (on all
## variables) required to compute the correlation between
## nitrate and sulfate; the default is 0
## Return a numeric vector of correlations
files_list <- list.files(directory, full.names=TRUE)
id = 1:332
monitor_data <- lapply(files_list[id], read.csv)
obs <- complete(directory)
corxy <- numeric()
for (i in nrow(obs)) {
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
}
corxy
}
corr("specdata", 150)
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
id = 1:332
monitor_data <- lapply(files_list[id], read.csv)
if (obs[i, "nobs"] > threshold) {
data <- monitor_data[[i]]
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
corxy
corr <- function(directory, threshold = 0) {
## 'directory' is a character vector of length 1 indicating
## the location of the CSV files
## 'threshold' is a numeric vector of length 1 indicating the
## number of completely observed observations (on all
## variables) required to compute the correlation between
## nitrate and sulfate; the default is 0
## Return a numeric vector of correlations
files_list <- list.files(directory, full.names=TRUE)
id = 1:332
monitor_data <- lapply(files_list[id], read.csv)
corxy <- numeric()
for (i in id) {
data <- monitor_data[[i]]
nobs <- length(data[complete.cases(data), 1])
if (nobs > threshold) {
x <- data[complete.cases(data), "sulfate"]
y <- data[complete.cases(data), "nitrate"]
corxy <- c(corxy, cor(x, y))
}
}
corxy
}
corr("specdata", 150)
submit()
submit()
submit()
library(datasets)
data(iris)
?iris
head(iris)
d <- iris(which(iris$Species == "virginica"))
d <- iris[which(iris$Species == "virginica")]
which(iris$Species == "virginica")
iris[which(iris$Species == "virginica")]
iris[,which(iris$Species == "virginica")]
iris[which(iris$Species == "virginica"), ]
d <- iris[which(iris$Species == "virginica"),]
head(d)
d <- iris$Sepal.Length[which(iris$Species == "virginica")]
head(d)
mean(d)
d <- iris[which(iris$Species == "virginica"),]
class(d)
apply(d, 1, mean)
head(d)
apply(d[,1:4], 1, mean)
apply(d[,1:4], 2, mean)
data(mtcars)
?mtcars
d <- tapply(mtcars$mpg, mtcars$cyl, mean)
head(d)
head(mtcars)
d <- mtcars$mpg[which(mtcars$cyl == 6)]
d
mean(d)
d <- tapply(mtcars$hp, mtcars$cyl, mean)
d
abs(d$4-d$8)
d$4-d$8
class(d)
d[4]
d[1]
class(d[1])
abs(d[1]-d[3])
d
debug(ls)
ls
?ls
q
exit
?
ls
r
e
x
q
0
0
0
q
stop
stop
undebug(ls)
q
?ls
ls(environment(iris))
ls(environment(ls))
debug(ls)
ls(environment(ls))
undebug(ls)
d
## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
x.solve <- NULL
set <- function(m) {
x <<- m
x.solve <<- NULL
}
get <- function() x
setsolve <- function(solve) x.solve <<- solve
getsolve <- function() x.solve
list(set = set, get = get,
setsolve = setsolve,
getsolve = getsolve)
}
## Write a short comment describing this function
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
s <- x$getsolve()
if(!is.null(s)) {
message("getting cached data")
return(s)
}
data <- x$get()
s <- solve(data, ...)
x$setsolve(s)
s
}
m1 <- c(rnorm, 10)
m1 <- c(rnorm(10, 1), rnorm(10,1))
m1
m1 <- matrix(c(rnorm(100,1)), nrow=10, ncol=10)
m1
s1 <- solve(mat)
s1 <- solve(m1)
s1
s1
s1 <- solve(m1)
s1
m2 <- makeCacheMatrix(m1)
m2$get
m2$get()
m1
cacheSolve(m2)
cacheSolve(m2)
s
s1
cacheSolve(m2)
identical(cacheSolve(m2), s1)
m2$set(matrix(c(rnorm(100,1)), nrow=10, ncol=10))
cacheSolve(m2)
cacheSolve(m2)
source("cachematrix.R")
source("ProgrammingAssignment2/cachematrix.R")
source("ProgrammingAssignment2/cachematrix.R")
m1 <- matrix(c(rnorm(100,1)), nrow=10, ncol=10)
m2 <- makeCacheMatrix(m1)
s1 <- solve(m1)
identical(cacheSolve(m2), s1)
identical(cacheSolve(m2), s1)
identical(cacheSolve(m2), s1)
unzip("rprog_data_ProgAssignment3-data.zip", exdir = "ProgrammingAssignment3")
outcome <- read.csv("ProgrammingAssignment3/outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11])
names(outcome)
outcome[, 7]
unique(outcome[, 7])
any(unique(outcome[, 7] == "FL"))
any(unique(outcome[, 7] == "FF"))
any(outcome[, 7] == "FF")
any(outcome[, 7] == "FL")
?stop
unzip("rprog_data_ProgAssignment3-data.zip")
cols <- c(11, 17, 23)
names(cols) <- c("heart attack", "heart failure", "pneumonia")
cols
cols[1]
cols["pneumonia"]
outcome = "pneumonia"
state = "MD"
oc = "pneumonia"
outcome <- read.csv("ProgrammingAssignment3/outcome-of-care-measures.csv", colClasses = "character")
outcome[, 11] <- as.numeric(outcome[, 11])
outcome[, 17] <- as.numeric(outcome[, 17])
outcome[, 23] <- as.numeric(outcome[, 23])
oc <- "pneumonia"
state <- "MD"
outcome[, cols[oc]][which(outcome[, 7] == state)]
min(outcome[, cols[oc]][which(outcome[, 7] == state)])
mino <- min(outcome[, cols[oc]][which(outcome[, 7] == state)])
outcome[, 1][which(outcome[, cols[oc]] == mino)]
outcome[, 2][which(outcome[, cols[oc]] == mino)]
outcome[order(-2), 2][which(outcome[, cols[oc]] == mino)]
outcome[order(-Hospital.name), 2][which(outcome[, cols[oc]] == mino)]
outcome[order(-Hospital.Name), 2][which(outcome[, cols[oc]] == mino)]
outcome[order(-Hospital.Name), ][which(outcome[, cols[oc]] == mino)]
outcome[1, ][which(outcome[, cols[oc]] == mino)]
outcome[, 2][which(outcome[, cols[oc]] == mino)]
outcome[which(outcome[, cols[oc]] == mino)]
outcome[which(outcome[, cols[oc]] == mino), ]
outcome[which(outcome[, cols[oc]] == mino), c(2,7,23)]
savehistory("C:/Users/Alxdraco/Courses/DataScience/history.R")
