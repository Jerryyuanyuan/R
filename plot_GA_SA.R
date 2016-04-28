p <- seq(0,0.2,by=0.01)
GA_SA_res <- read.csv(header=F,"C:\\Users\\zhiqiang\\Desktop\\GA_SA_res.csv")
n20 = GA_SA_res[1,]
n40 = GA_SA_res[2,]
n60 = GA_SA_res[3,]
n80 = GA_SA_res[4,]
n100 = GA_SA_res[5,]
yrange = c(0,1)
xrange = c(0,0.2)
plot(xrange,yrange,type="n",xlab="p",ylab="可解概率")
linetype<-c(1:5)
plotchar<-seq(18,18+5,1)
colors<-rainbow(5)

for (i in 1:5){
    ps <- GA_SA_res[i,]
    lines(p,ps,type='b',lwd=1,lty=linetype[i],col=colors[i],pch=plotchar[i])
}


# lines(p,n20,type='b',xlim=c(0,0.2),ylim=c(0,1),main="算法2数值实验结果",xlab="p",ylab="可解概率",lty=2,pch=17,col='red',lwd=1)
# lines(p,n40,type='b',lty=2,pch=23,col='blue',lwd=1)
# lines(p,n60,type='b',lty=2,pch=3,col='orange',lwd=1)
# lines(p,n80,type='b',lty=2,pch=15,col='green',lwd=1)
#　lines(p,n100,type='b',lty=2,pch=6,col='black',lwd=1)

title("算法３数值结果")
legend("bottomleft",inset=0.01,c('N=20','N=40','N=60','N=80','N=100'),col=colors,cex=0.8,pch=plotchar,lty=linetype)

grid(nx=NA,ny=2,lwd=2)
#　legend("bottomleft",inset=0.01,c('N=20','N=40','N=60','N=80','N=100'),lty=2,pch=c(17,23,3,15,6),col=c('red','blue','orange','green','black'))