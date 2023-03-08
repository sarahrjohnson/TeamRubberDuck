Bootstrap_CI_3_factors <- function (df, ses = c(1, 2, 3)){
  
  ses1 <- subset(school_data, ses == 1)$write
  ses2 <- subset(school_data, ses == 2)$write
  ses3 <- subset(school_data, ses == 3)$write
  
  # bootstrap function
  mean_vector <- NULL
  n1 <- length(ses1)
  n2 <- length(ses2)
  n3 <- length(ses3)
  
  for (i in 1:10000) {
    the_sample1 <- sample(ses1, n1, replace = TRUE)
    the_sample2 <- sample(ses2, n2, replace = TRUE)
    the_sample3 <- sample(ses3, n3, replace = TRUE)
    the_sample <- c(the_sample1, the_sample2, the_sample3)
    mean_vector <- c(mean_vector, mean(the_sample))
  }
  
  mean_vector <- sort(mean_vector)
  boot_int <- c(mean_vector[251], mean_vector[9750])
  
  # print the confidence interval from the bootstrap result
  return(boot_int)
  return(fivenum(mean_vector))
  
}