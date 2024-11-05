library(tidyverse)
load("phs_cancelled_messy.Rda")
names(cancelled_messy)
# Transforming the data for efficient analysis
df <- cancelled_messy %>% 
  pivot_longer(cols = "NHS Ayrshire and Arran" : "NHS Fife") %>% 
  pivot_wider(names_from = Measure, values_from = value)
load("phs_cancelled_tidy.Rda")

# Plot the data
cancelled_tidy %>% 
  ggplot(aes(x = Month, y = TotalOperations)) +
  geom_point()
install.packages("gapminder")
library(gapminder)
