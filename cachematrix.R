## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invrse<-NULL
  set_value<<-function(y){
    x<<-y
    invrse<-NULL
  }
  get_value<-function() x
  set_invrse<-function(inverse) invrse<-inverse
  get_invrse<-function() invrse
  list(get_value=get_value,set_value=set_value,set_invrse=set_invrse,get_invrse=get_invrse)
  }


## returns the cached inverse of the matrix

cacheSolve <- function(x, ...) {
        invrse<=x$get_invrse()
  if(!is.null(invrse)){
    message("getting cached data")
    return(invrse)
  }
  
matrix<-x$get_value()
invrse<-solve(mat,...)
x$set_invrse(invrse)
 }
