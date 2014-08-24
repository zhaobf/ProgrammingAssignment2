## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	## 初始化一个逆矩阵m
	m <- NULL

	## 设置矩阵的值
	set <- function(matrix){
		x <<- matrix
		m <<- NULL
	}

	## 设置矩阵的取值
	get <- function() x

	## 设置矩阵的逆
	setInverse <- function(inverse) m <<- inverse

	## 取矩阵的逆
	getInverse <- function() m

	## 返回列表
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()

        ## return the inverse if the matrix already set

        if(!is.null(m)){
        	message("getting cached data")
        	return(m)
        }

        ## get the matrix from the object
        matrix <- x$get()

        ## cal the inverse using the solve function
        m <- solve(matrix, ...)

        ## cache the inverse of the matrix
        x$setInverse(m)

        ## return the matrix
        m



}
