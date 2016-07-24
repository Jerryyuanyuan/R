time1=c(197.2274,1.9773e+03,5.4599e+03,1.0843e+04,1.7726e+04)
time2=c(1.4795e+03,1.2102e+04,2.8842e+04,4.7033e+04,8.9918e+04)
if(FALSE){time2=c(17901.6423016358,30142.3535896257,47124.0948670245,67237.2453254231,97026.7935130858)}
N <- seq(20,100,by=20)
opar <- par(no.readonly=T)
par(mfrow=c(2,1),mai=c(1,1,0.2,.2),cex.lab=1.1)
plot(N,time1,type='b',pch=19,lty=3,xlab='N',ylab='CPU time(s)',sub='(a)GSA算法在p=0.06处的运行时间')
plot(N,time2,type='b',pch=19,lty=3,xlab='N',ylab='CPU time(s)',sub='(b)GSA算法在p=0.1处的运行时间')
par(opar)