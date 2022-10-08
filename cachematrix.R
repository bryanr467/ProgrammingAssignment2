## Put comments here that give an overall description of what your
## functions do
##Writing a pair of functions of both "makeCacheMatrix" and "cacheSolve"
##that cache the inverse of a matrix

## Write a short comment describing this function
##"makeCacheMatrix" is a function that creates a special matrix object that can 
##cache its inverse for the input
makeCacheMatrix <- function(x = matrix()){
inv<-NULL
set<-function(y){
x<<-y
inv<<-NULL
}
get<-function()x
setinv<-function(inverse) inv<<-inverse
getinv<-function()inv
list(set=set,get=get,setinv=setinv,getinv=getinv)
}
## Write a short comment describing this function
##This is used to get the cache data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv<-x$getinv()
if(!is.null(inv)){
messsage("getting cached result")
return(inv)
}
data<-x$get()
inv<-solve(data, ...)
x$setinv(inv)
inv
}