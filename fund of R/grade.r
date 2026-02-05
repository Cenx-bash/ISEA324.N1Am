# conditionals
grade <- function(score) {
  if (score >= 90) {
    return("A")i
  } else if (score >= 80) {
    return("B")
  } else if (score >= 70) {
    return("C")
  } else {
    return("F")
  }
}

# Vectorized ifelse
scores <- c(85, 92, 68, 95, 72)
letter_grades <- ifelse(scores >= 90, "A",
                       ifelse(scores >= 80, "B",
                              ifelse(scores >= 70, "C", "F")))

# Custom functions with error handling
calculate_stats <- function(x, na.rm = TRUE) {
  if (!is.numeric(x)) {
    stop("Input must be numeric")
  }
  
  if (na.rm) {
    x <- na.omit(x)
  }
  
  list(
    mean = mean(x),
    median = median(x),
    sd = sd(x),
    n = length(x)
  )
}

# Function factories
make_multiplier <- function(factor) {
  function(x) {
    x * factor
  }
}

double <- make_multiplier(2)
triple <- make_multiplier(3)
double(10)  # Returns 20
