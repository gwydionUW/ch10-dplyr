# Exercise 3: using the pipe operator

# Install (if needed) and load the "dplyr" library
#install.packages("dplyr")
library("dplyr")

# Install (if needed) and load the "fueleconomy" package
#install.packages('devtools')
#devtools::install_github("hadley/fueleconomy")
library(fueleconomy)

# Which 2015 Acura model has the best hwy MGH? (Use dplyr, but without method
# chaining or pipes--use temporary variables!)
acura <- filter(vehicles, make == 'Acura', year == 2015)
top_acura <- filter(acuras, hwy == max(hwy))
top_modl <- select(best_acura, model)

# Which 2015 Acura model has the best hwy MPG? (Use dplyr, nesting functions)
top_modl <- select(
  filter(
    filter(vehicles, make == 'Acura', year == 2015), hwy == max(hwy)), model
)

# Which 2015 Acura model has the best hwy MPG? (Use dplyr and the pipe operator)
top_modl <- filter(vehicles, make == 'Acura', year == 2015) %>%
  filter(hwy == max(hwy)) %>%
  select(model)

### Bonus

# Write 3 functions, one for each approach.  Then,
# Test how long it takes to perform each one 1000 times
