
#ques 1
myfun <- function(x){
  vec<-x^c(1:x)
  return(vec)
}
myfun(5)
#b
myfun <- function(x){
  vec<-(x^c(1:x))/c(1:x)
  return(vec)
}
myfun(5)

#ques 2

mat<-matrix(c(1:4),nrow=1)
mat
matrixfunc<-function(mat){
  for (x in 1:4){
    if (mat[x][1] %% 2==1)
      mat[x][1]<-mat[x][1]*2
    
  }
  return(mat)
    
}
matrixfunc(mat)

#3rd ques
myfun<-function(x,y){
  return(x^y)
}
myfun(2,3)

#4th ques
doreturn<-function(x,y){
  a<-5*x+y
  b<-x+7*y
  r<-3*x+9*y
  t<-(x/y)-115
  return(c(a,b,r,t))
}
doreturn(10,15)

#5th ques
myplot<-function(datax,datay){
  plot(datax,datay)
  lines(datax,datay)
}
myplot(c(1:3),c(6:8))
