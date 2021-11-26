library(ggplot2)

data = read.csv("C:/Users/doria/OneDrive/Desktop/Data Management and Statistics/Practicals/example_data.csv")

ggplot(data, aes(x=xdata, y=ydata)) +
  geom_point() + 
  xlab("X") + 
  ylab("Y") +
  ggtitle("Random Data")

