
library(lattice)

set.seed(10)
x <- rnorm(100)
f <- rep(0:1, each = 50)
y <- x + f - f * x + rnorm(100, sd = 0.5)
f <- factor(f, labels = c("Group 1", "Group 2"))
xyplot(y ~ x | f, layout = c(2, 1))  ## Plot with 2 panels

library(datasets)
head(mtcars)
summary(mtcars)
mtcars <- transform(mtcars, cyl = factor(cyl))

xyplot(mpg ~ disp | cyl, , data = mtcars, layout = c(3,1),
  panel = function(x, y, ...) {
  panel.xyplot(x, y )
  #panel.lmline(x, y, col = 2)
} )

qplot(log(disp), mpg, data = mtcars, facets = .~cyl)

qplot(mpg, data = mtcars, facets = cyl~.,  binwidth = 2)

set.seed(10)
x <- rnorm(100)
f <- rep(0:1, each = 50)
y <- x + f - f * x + rnorm(100, sd = 0.5)
f <- factor(f, labels = c("Group 1", "Group 2"))
xyplot(y ~ x | f, layout = c(2, 1))  ## Plot with 2 panels

xyplot(y ~ x | data = mtcars, panel = function(x, y, ...) {
  panel.xyplot(x, y, ...)  ## First call the default panel function for 'xyplot'
  panel.abline(h = median(y), lty = 2)  ## Add a horizontal line at the median
})

xyplot(mpg ~ disp, data = mtcars,
       groups = cyl,
       panel = function(x, y, ...) {
         panel.xyplot(x, y,  ...)
         panel.text(x, y, labels = mtcars$gear, col = mtcars$gear)
       })




library(nlme)
library(lattice)
xyplot(weight ~ Time | Diet, BodyWeight)

library(datasets)
data(airquality)

library(ggplot2)

airquality = transform(airquality, Month = factor(Month))
qplot(Wind, Ozone, data = airquality, facets = . ~ Month)

library(ggplot2)
g <- ggplot(movies, aes(votes, rating))
print(g)
g + geom_point()
