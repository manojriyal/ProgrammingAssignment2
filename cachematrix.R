## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
        m <- NULL
        set <- function(matrix){
                x <<- matrix
                m <<- NULL
        }
        get <- function() 
                x

setInverse <- function(inverse)
        m <<- inverse

getInverse <- function()
        m

list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}       

cacheSolve <- function(x, ...){
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data) %*% data
        x$setInverse(m)
        m
}
