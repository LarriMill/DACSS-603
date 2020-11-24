# HW 6

#5.
dbinom(13, 20, 0.64) # a
pbinom(9, 20, 0.64, lower.tail = FALSE) #b
pbinom(15, 20, 0.64) - pbinom(10, 20, 0.64) #c
0.64*20

# 6
dpois(0, 7.5) # a
ppois(2, 7.5, lower.tail = FALSE) #b
sqrt(7.5) #c

# 4 b
rbinom(3, 10, 0.5)
rpois(3, 10, )

# c
dbinom(6, 10, 0.5, log = FALSE)

# D
pbinom(3, 10, 0.64, lower.tail = FALSE)


#e
qbinom(0.2, 10, 0.3)