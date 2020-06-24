install.packages("numDeriv")
library(numDeriv)

fun1 <- function(x, y) (x^2+y-11)^2 + (x+y^2-7)^2

a <- 5
x <- seq(from=-a, to=a, length.out=50)
y <- seq(from=-a, to=a, length.out=50)
z <- outer(x, y, fun1)

image(x=x, y=y, z=z)
contour(x=x, y=y, z=z, add=TRUE, nlevels=40, col=gray(0.5))

theta_0 <- c(0, 0)
alfa <- 0.01
n <- 9

fun2 <- function(w) (w[1]^2+w[2]-11)^2 + (w[1]+w[2]^2-7)^2

thetas <- matrix(NA, ncol=2, nrow=n+1)      # To store results
colnames(thetas) <- c('x', 'y')
thetas[1, ] <- theta_0 

for (i in 2:(n+1))
  thetas[i, ] <- thetas[i-1, ] - alfa * grad(func=fun2, x=thetas[i-1, ])

thetas

