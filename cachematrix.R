## The following functions calculate the inverse of a matrix and saves it
## to the cache such that the next time the user attempts to calculate the
## matrix inverse, the previously saved value is returned instead of
## repeating the calculation.

## This function "makeCacheMatrix" creates a special "matrix" object, which is really 
## a list containing a function to :
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
 ## create a matrix object x and some associated sub-functions/methods
        
        ## define the cache m
        m <- NULL
        
        ## sub-function set
        set <- function(y) 
        {
          x <<- y ## assign the input matrix y to the variable x in the parent environment
          m <<- NULL ## re-initialize m in the parent environment to null
        }
  ## sub-function get which return the matrix x
        get <- function() x 
        
        ## sub-function setinverse which set the cache m equal to the inverse of the matrix x
        setinverse <- function(inverse) m <<- inverse 
        
        ## sub-function getinverse which return the cached inverse of x
        getinverse <- function() m 
        
        ## the function makeCacheMatrix return the function components
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        
}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
##check if the inverse of the matrix is already calculated (m is not null) 
        ## then, return the inverse matrix from the cache objet x
        m <- x$getinverse()
        if(!is.null(m)) {
                return(m)
        }
        
        # if the inverse of the matrix is not calculated
        # solve the provided matrix and set the inverse to the "cache matrix" objet x
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        return(m)
       
}
