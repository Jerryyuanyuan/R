p=c(0,0.008,0.016,0.024,0.032,0.04,0.048,0.056,0.064,0.072,0.08,0.088,0.096,0.104,0.112,0.12,0.128,0.136,0.144,0.152,0.16,0.168,0.176,0.184,0.192,0.2)
randwalk_res <- read.csv(header=F,"C:\\Users\\zhiqiang\\Desktop\\randwalk_res.csv")
n20 = randwalk_res[1,]
n40 = randwalk_res[2,]
n60 = randwalk_res[3,]
n80 = randwalk_res[4,]
n100 = randwalk_res[5,]
yrange = c(0,1)
xrange = c(0,0.2)
#mars=c(50,10,40,20)+0.1
par(mai=c(1,1,0.2,.2))
plot(xrange,yrange,type="n",xlab="p",ylab="可  解  概  率",ps=16,cex.axis=1.2,cex.lab=2,font.lab=1)
linetype<-c(1:5)
plotchar<-c(2,17,25,19,8)

for (i in 1:5){
    pps <- randwalk_res[i,]
    lines(p,pps,type='b',lwd=1.2,lty=linetype[i],pch=plotchar[i],cex=1.5)
}

#title("算法1数值实验结果",cex.main=2,font.main=1)
legend("bottomleft",inset=0.01,c('N=20','N=40','N=60','N=80','N=100'),cex=1.2,pch=plotchar,lty=linetype)
grid(nx=NA,ny=2,lwd=2)


if(FALSE){
plot(p,n20,type='b',xlim=c(0,0.2),ylim=c(0,1),main="随机游走算法数值实验结果",xlab="p",ylab="可解概率",lty=2,pch=17,col='red',lwd=1)
lines(p,n40,type='b',lty=2,pch=23,col='blue',lwd=1)
lines(p,n60,type='b',lty=2,pch=3,col='orange',lwd=1)
lines(p,n80,type='b',lty=2,pch=15,col='green',lwd=1)
lines(p,n100,type='b',lty=2,pch=6,col='black',lwd=1)

grid(nx=NA,ny=2,lwd=2)
legend("topright",inset=0.01,c('N=20','N=40','N=60','N=80','N=100'),lty=2,pch=c(17,23,3,15,6),col=c('red','blue','orange','green','black'))
}