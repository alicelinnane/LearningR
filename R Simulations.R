#Sample function
states = c("Massachusetts", "New York", "Vermont")
sample(states, size = 10, replace = TRUE)
#Work with normal distributions
rnorm(n=100) 
plot(density(rnorm(n=10000)))

#Loop function to do sampling of coin tosses
coin = c("Heads", "Tails")
toss = c()
for (i in 1:100) {
  toss[i] <- sample(coin, size = 1)
}
#Loop function to sample census data
marital<- c("single", "married")
income <- 1:4
results <-  matrix(nrow = 100, ncol = 3, data = NA)
colnames(results) <- c("marital", "income", "state")
for (i in 1:100) {
  results[i, 1] <- sample(marital, size = 1)
  results[i, 2] <- sample(income, size = 1)
  results[i, 3] <- sample(states, size = 1)
}
#Use the apply function to summarize information over multiple columns of a dataset
apply(results, MARGIN = 2, FUN = table)