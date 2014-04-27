## this functions calculate the inverse of a matrix 

## this function creates a special matrix and later it sets 
## and gets the values of the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
        x <<- y
        m <<- NULL
        }
        get <- function()x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
        setsolve = setsolve,
        getsolve = getsolve)

}


## this function calculate the inverse of the matrix of the above function 
## but first checks if the inverse of the matrix has been calculated 

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
        message("getting cached data")
        return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
