
# This is a bootstrap for a confidence interval for a single mean. It is
# not yet a function but it can easily be converted to a function.

# Initialize objects
mean_vector <- NULL
n <- length(data)

# Take multiple samples (with replacement) and construct sampling
# distrbution of the mean

for (i in 1:10000) {
  the_sample <- sample(data, n, replace = TRUE)
  mean_vector <- c(mean_vector, mean(the_sample))
}

# Sort the vector and cut off 2.5% on each end
mean_vector <- sort(mean_vector)
boot_int <- c(mean_vector[251], mean_vector[9750])
