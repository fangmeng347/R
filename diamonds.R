library(ggplot2)
head(diamonds)
qplot(diamonds$carat, diamonds$price)
qplot(carat, price, data = diamonds, colour=clarity)
qplot(carat, price, data = diamonds,
      geom=c("point", "smooth"), method=lm)
qplot(carat, data = diamonds,
      geom="histogram")
qplot(carat, data = diamonds,
      geom="histogram", binwidth = 100)
ggplot(diamonds, aes(x=carat, y=price)) + geom_point(aes(colour=carat)) + scale_colour_brewer()
ggplot(diamonds) + geom_histogram(aes(x=price))

p <- ggplot(diamonds, aes(x=price))
p + geom_histogram()
p + stat_bin(geom="area")
p + stat_bin(geom="point")
p + stat_bin(geom="line")
p + geom_histogram(aes(fill = clarity))
p + geom_histogram(aes(y = ..density..))

# new variables
ggplot(diamonds, aes(x=price))+ geom_histogram(aes(y = ..density..)) +
  geom_histogram(aes(colour = ..count..))

# setting vs mapping
p <- ggplot(diamonds, aes(x=carat,y=price))
# What will this do?
p + geom_point(aes(colour = "green"))
p + geom_point(colour = "green")
p + geom_point(colour = colour)

# scale
qplot(carat, data=diamonds, geom="histogram", fill=clarity)
qplot(carat, cut, data=diamonds, geom="jitter", colour=price)

# lacking movies df
qplot(log10(length), data=movies,
      geom="histogram", binwidth=0.1)
qplot(length, data=movies,
      geom="histogram", binwidth=0.1, log="x")
qplot(length, data=movies,
      geom="histogram", binwidth=10) +
  coord_trans(x="log10")
