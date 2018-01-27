## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL                         ## Clear variable inv
    set <- function(y)  {               ## Function to store passed new matrix into cache 
        x <<- y              
        inv <<- NULL                    ## Clear old inverse matrix values from cache, 
    }                                   ## as we have new matrix values 
    
    get <- function() x                 ## Function to get / check current matrix values 
    setinv <- function(new_inv) {       ## Function to store passed inv matrix 
        inv <<- new_inv                 ## values into cache
    }     
    getinv <- function() inv            ## Function to get / check current inv matrix values
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()                   ## Try to get inv matrix from the cache
    if(!is.null(inv)) {                 ## If inv matrix is assigned return inv matrix 
        return(m)                       ## and leave the function
    }
    data <- x$get()                     ## If inverse matrix is not assigned above
    inv <- solve(data)                  ## Get matrix from cache and calculate inv matrix
    x$setinv(inv)                       ## Call setinv function to store new calculated inv 
    return(inv)                         ## matrix values into cache and return those values   
}
