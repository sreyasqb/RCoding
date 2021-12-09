library(tidyverse)
library(ggplot2)
View(txhousing)
?txhousing
#ggplot(CO2,aes(conc,uptake))+geom_bar(stat="identity")
#ggplot(CO2,aes(conc,uptake))+coord_polar("y",start=0)
ggplot(txhousing,aes(year,sales,label=sales))+
  geom_bar(stat="identity")+
  geom_text()
txhousing.agg<-aggregate(sales~year,txhousing,mean)
txhousing.agg$sales=round(txhousing.agg$sales,1)
ggplot(txhousing.agg,aes(year,sales,label=sales))+
  geom_bar(stat="identity",color="red",fill="blue",width=0.1)+
  geom_text(vjust=-1)
View(txhousing.agg)

