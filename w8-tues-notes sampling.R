#week8-tuesday-in class example

#10,000 observations each for fire, smoke, alarms
fire <- sample(
  x = c(0,1), #values to choose from when random sampling
  size = 10000,
  replace = T #allowing repetitive observed values, i.e. 0,0,0 is allowed
)
  
smoke <- ifelse(
  fire == 1, 
  sample(c(0,1), size = 10000, T, prob = c(0.1,0.9)), 
  sample(c(1,0), size = 10000, T, prob = c(0.2,0.8))
)
  
alarm <- ifelse(
  smoke == 1, 
  sample(c(0,1), size = 10000, T, prob = c(0.05,0.95)), 
  sample(c(1,0), size = 10000, T, prob = c(0.05,0.95))
)
  
  
df <- data.frame(
  fire = fire,
  smoke = smoke,
  alarm = alarm
)

model <- lm(alarm ~fire, df)
summary(model)

gmodel <- glm(alarm ~fire, df, family = quasibinomial())
summary(gmodel)

exp(gmodel$coefficients[2])/(exp(gmodel$coefficients[2]) + 1) #fire

gmodel_smoke <- glm(alarm ~smoke, df, family = quasibinomial())
summary(gmodel_smoke)

exp(gmodel_smoke$coefficients[2])/(exp(gmodel_smoke$coefficients[2]) + 1) #smoke



#EXAMPLE baby vs age vs reading ability 
age <- sample(
  5:10,
  size = 10000,
  replace = T
) #random age samples

shoe <- age + rnorm(10000) #random shoe samples with some relationship to age

reading <- age*2 - 5 + rnorm(10000)*1.5 #same

data <- data.frame(
  age = age,
  shoe = shoe,
  reading = reading
)

shoe_model <- lm(reading ~shoe, data)
summary(shoe_model)