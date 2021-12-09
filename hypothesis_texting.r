hypo <- function(mean,meanErr,sigma,n,confInt,condition){
  zStat<-(mean-meanErr)/(sigma/sqrt(n))
  zAlpha<-qnorm(confInt/2)
  print(zStat)
  
  if (n<30){
    zAlpha<-qt(1-confInt/2,n-1)
  }
  print(zAlpha)
  
  if (condition==1){
    if (zAlpha>zStat){
      print("Null hypothesis is discared")
    }
  }else if (condition==0){
    if (!(-zAlpha < zStat && zStat < zAlpha)){
      print("Null hypothesis is discared")
    }
  }else if (condition==-1){
    if (zStat<-zAlpha){
      print("Null hypothesis is discared")
    }
  }

}
#Question 1
hypo(mean=931,meanErr = 1131,sigma=333,n=30,confInt=0.95,condition=1)

#Question 2
hypo(mean=275,meanErr = 272,sigma=60,n=840,confInt=0.95,condition=-1)

#Question 3
hypo(mean=84,meanErr=100,sigma=80,n=72,confInt=0.90,condition=0)

#Question 4
hypo()