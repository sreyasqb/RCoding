library(ggplot2)
data()
View(BOD)
ggplot(data=BOD,mapping=aes(x=Time,y=demand))+
  geom_point(size=5,color="red")+
  geom_smooth(size=1,color="blue")

