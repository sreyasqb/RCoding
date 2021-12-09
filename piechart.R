library(ggplot2)
#colors<-c("#d12e2e","#d71e1e","#c91d1d")
df<-data.frame(
  group=c("Male","Female","Child"),
  value=c(25,25,50) 
  )
ggplot(df,aes(x="",value,fill=group))+
  geom_bar(stat="identity")+
  coord_polar("y",start=0)+
  scale_fill_grey()+theme_minimal()

  

