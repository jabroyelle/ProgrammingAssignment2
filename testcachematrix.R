source()
x <- matrix(rnorm(rnorm(4000000)),2000,2000)
system.time(l <- makeCacheMatrix(x))

                                                      
~                                                            
system.time(y<-cacheSolve (l,x))

system.time(y2<-cacheSolve (l,x))

y2-y

l$getsolved()

system.time(y<-cacheSolve (l,x))
