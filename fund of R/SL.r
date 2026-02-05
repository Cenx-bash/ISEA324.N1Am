# Linear regression
model_lm <- lm(score ~ age + factor(grade), data = students)
summary(model_lm)
confint(model_lm)
plot(model_lm)  # Diagnostic plots

# Generalized linear models
# Logistic regression
set.seed(123)
binary_data <- data.frame(
  x = rnorm(100),
  success = rbinom(100, 1, 0.6)
)

glm_model <- glm(success ~ x, 
                 family = binomial(link = "logit"),
                 data = binary_data)
summary(glm_model)

# ANOVA
anova_result <- aov(score ~ grade, data = students)
summary(anova_result)
TukeyHSD(anova_result)  # Post-hoc tests

# Time series analysis
ts_data <- ts(rnorm(100), start = c(2020, 1), frequency = 12)
decomposed <- decompose(ts_data)
acf(ts_data)  # Autocorrelation
pacf(ts_data) # Partial autocorrelation
