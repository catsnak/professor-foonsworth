library(ggplot2)

data = read.csv("example_data.csv")

ggplot(data, aes(x=xdata, y=ydata)) +
  geom_point(shape = 3) + 
  xlab("X") + 
  ylab("Y") +
  ggtitle("Random Data")

p1 = 1
p2 = 0.2

# do the fit
fit = nls(ydata ~ p1*cos(p2*xdata) + p2*sin(p1*xdata), data = data, start = list(p1=p1,p2=p2))

#Plot the fitted line
new = data.frame(xdata = seq(min(data$xdata),max(data$xdata),len=200))
lines(new$xdata,predict(fit,newdata=new))

