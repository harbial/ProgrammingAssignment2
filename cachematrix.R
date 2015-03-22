## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
			inver_x <- NULL
		set <- function(y) {
			x <<- y
			Inver_x <<- NULL
			}
		get <- function() x
		setinverse <- function(inverse) inver_x <<- inverse
		getinverse <- function() inver_x
		list(set = set, get = get,
			setinverse = setinverse,
			getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inver_x <- x$getinverse()
	if(!is.null(inver_x)) {
		message("getting cached inverse matrix")
		return(inver_x)
	}
	data <- x$get()
	x$set(data)
	inver_x <- solve(data, ...)
	x$setinverse(inver_x)
	inver_x
}
