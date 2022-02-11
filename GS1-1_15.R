myname <- "Lauren Temple"

library(zoo)
set.seed(2022)

x <- sample(0:1, 20, rep=T); x


xr = rle(x); xr

xr$len

xr$val

sum((xr$len >= 2))

sum((xr$val == 1))

sum((xr$len >= 2) & (xr$val == 1))

m = 1000; shots = numeric(m)

for(i in 1:m) {
  
  x = sample(0:1, 20, rep = T)
  
  xr = rle(x)
  
  shots[i] = sum((xr$len >= 5) & (xr$val == 1))
  
}

prop5_82_mean <- mean(shots) ; prop5_82_mean

prop5_82_sd <- sd(shots) ; prop5_82_sd

#again for 10 games

m = 10; shots = numeric(m)

for(i in 1:m) {
  
  x = sample(0:1, 20, rep = T)
  
  xr = rle(x)
  
  shots[i] = sum((xr$len >= 5) & (xr$val == 1))
  
}

prop5_10_mean <- mean(shots) ; prop5_10_mean

prop5_10_sd <- sd(shots) ; prop5_10_sd