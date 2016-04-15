p <- seq(0,0.2,by=0.01)
GA_SA_res <- read.csv(header=F,"C:\\Users\\zhiqiang\\Desktop\\GA_SA_res.csv")
n20 = GA_SA_res[1,]
n40 = GA_SA_res[2,]
n60 = GA_SA_res[3,]
n80 = GA_SA_res[4,]
n100 = GA_SA_res[5,]

plot(p,n20,type='b',xlim=c(0,0.2),ylim=c(0,1),main="算法2数值实验结果",xlab="p",ylab="可解概率",lty=2,pch=17,col='red',lwd=1)
lines(p,n40,type='b',lty=2,pch=23,col='blue',lwd=1)
lines(p,n60,type='b',lty=2,pch=3,col='orange',lwd=1)
lines(p,n80,type='b',lty=2,pch=15,col='green',lwd=1)
lines(p,n100,type='b',lty=2,pch=6,col='black',lwd=1)

grid(nx=NA,ny=2,lwd=2)
legend("bottomleft",inset=0.01,c('N=20','N=40','N=60','N=80','N=100'),lty=2,pch=c(17,23,3,15,6),col=c('red','blue','orange','green','black'))