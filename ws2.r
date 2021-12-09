mym = matrix(1:4, nrow = 2,ncol=2)
mym
matrixfun <- function(mym){
  mym[mym%%2 == 1] <- 2 * mym[mym%%2 == 1]
  return(mym)
}

matrixfun(mym)



