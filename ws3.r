library(prob)
help(prob)
tosscoin(1)# 3rd ques
tosscoin(3)# 4th ques
rolldie(1)#5th ques
rolldie(3,4)#6th ques
#7th ques
s<-tosscoin(2)
probspace(s)
#8th ques
c<-cards()
subset(c,suit=="Heart")
#9th ques
r<-rolldie(3)
subset(r,X1+X2+X3>15)

#10th ques
c<-cards()
A<-subset(c,suit=="Heart")
B<-subset(c,rank==7)

B[1,"rank"]

