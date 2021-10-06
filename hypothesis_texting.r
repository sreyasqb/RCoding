hypo <- function(mean,meanErr,sigma,n,confInt){
  zStat<-(mean-meanErr)/(sigma/sqrt(n))
  if (n>=30){
    if (qnorm((1-confInt)/2)>zStat){
      print(zStat)
      print(qnorm((1-confInt)/2))
      print("Null hypothesis is discared")
    }
  }

}
hypo(mean=931,meanErr = 1131,sigma=333,n=30,confInt=0.95)
