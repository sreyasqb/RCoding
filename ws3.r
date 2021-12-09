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
B<-subset(c,rank %in% 7:9)
union(A,B)

#11
S<-rolldie(2,makespace = TRUE)
A<-subset(S,X1==X2)
B<-subset(S,X1+X2>=8)
# #P(A|B)=P(A and B)/P(B)
r1<-Prob(A,given=B)
r2<-Prob(B,given=A)
r1
r2

#12
urnsamples(1:3,size=2,replace=TRUE)

#13

urnsamples(1:3,size=2,replace=FALSE)

#14
x<-rep(c("Red","Green"),times=c(7,3))
P<-urnsamples(x,size=3,replace=FALSE,ordered=FALSE)
Q<-probspace(P)
Prob(Q,isrep(Q,"Red",3))

#15
x<-rep(c("Red","Green"),times=c(7,3))
P<-urnsamples(x,size=3,replace=TRUE,ordered=FALSE)
Q<-probspace(P)
Prob(Q,isrep(Q,"Red",3))
