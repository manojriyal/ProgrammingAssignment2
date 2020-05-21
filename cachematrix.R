makeCacheMatrix <- function(x = matrix()){
## Return a matrix of 'x'
        m <- NULL
        set <- function(matrix){
## set the input x as a matrix
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
 ## This will Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInverse(m)
        m
}
