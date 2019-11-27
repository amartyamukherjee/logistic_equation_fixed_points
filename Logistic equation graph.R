a <- seq(0,4,0.01)

logistic.fn <- function(d, x) {d*x*(1-x)}

plot(a, numeric(length(a)), type='l', ylim = c(0,1), xlim = c(0,4), ylab='Fixed points', main='Fixed points of ax(1-x)')

b <- numeric(1000)

for (i in a) {
  b[1] <- 0.2
  for (j in 2:10000) {
    b[j] = logistic.fn(i, b[j-1])
  }
  points(numeric(1000)+i, b[9001:10000], cex=0.1)
}