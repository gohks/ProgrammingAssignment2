## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function is used to store a created matrix and it's inverse
## setinverse function allows users to input inverse of matrix
## getinverse fucntion allows users to retrieve stored inverse of matrix
makeCacheMatrix <- function(x = matrix()) {
 	  m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(input) m <<- input
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Write a short comment describing this function
## This function will check if inverse of matrix is already cached
## if yes, it will retrieve it, if not, it will compute and store it 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 	  m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m

}
