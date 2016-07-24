time1 <- c(60.2171,713.9688,1.6739e+03,2.6526e+03,6.5686e+03)
time2 <- c(778.603969623562,7213.85200083349,20526.2946169858,33543.4453063650,57207.8030085566)
if(FALSE){time2 <- c(1.2498e+04,2.5335e+04,4.2654e+04,6.2349e+04,1.0854e+05)}
N <- seq(20,100,by=20)
opar <- par(no.readonly=T)
par(mfrow=c(2,1),mai=c(1,1,0.2,.2),cex.lab=1.1)
plot(N,time1,type='b',pch=19,lty=3,xlab='N',ylab='CPU time(s)',sub='(a)RSA算法在p=0.06处的运行时间')
plot(N,time2,type='b',pch=19,lty=3,xlab='N',ylab='CPU time(s)',sub='(b)RSA算法在p=0.1处的运行时间')
par(opar)