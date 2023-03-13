
# function to bootstrap the means for porject G
  bootstrap_means <- function(data, num_resam = 10000) {
  n <- length(data)
  means <- rep(0, num_resam)
  for (i in 1:num_resam) {
    resampled_data <- sample(data, n, replace = TRUE)
    means[i] <- mean(resampled_data)
  }
  return(means)
}

  