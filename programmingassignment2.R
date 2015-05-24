## This is an inverse matrix R code for Coursera Programming Assignment #2

## This function creates a list of the functions set, get, set_inverse and get_inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    set_inverse <- function(inverse) inv <<- inverse
    get_inverse <- function() inv
    list(set=set, get=get, set_inverse=set_inverse, get_inverse=get_inverse)
}


## This function, checks if there is cached data, or inverses the matrix.

cacheSolve <- function(x, ...) {
    inv <- x$get_inverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$set_inverse(inv)
    inv
}
