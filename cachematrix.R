## Per the assignment, these two functions read in a matrix
## then saves the matrix in cache for comparison as well as 
## calculates the inverse of the matrix and saves it in cache
## so it does not need to be solved multiple times

## makeCacheMatrix accepts and invertible matrix as input
## it then puts the matrix in cache via a global variable
## it also inverts the matrix and puts the results in cache
## via a global variable

makeCacheMatrix <- function(x = matrix()) {
  global_x <<- x
  global_inv_x <<- solve(x)

}


## cacheSolve returns the inverse of an invertible matrix
## initially it checks to see if the matrix specified matches
## the matrix in cache.  If there is a perfect match it returns
## the precomputed solution from cache eliminating the need
## to recalculate.  If the matrix does not match, it then solves it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(identical(x,global_x)){
    return(global_inv_x)
  } else {
    (solve(x))
  }
}
