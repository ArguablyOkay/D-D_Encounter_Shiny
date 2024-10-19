## SETUP ----
# Necessary Packages 
library(tidyverse)
library(openxlsx)

# Read in data, some cleanup for personal preference
monsters <- read.xlsx("data/5e_monsters.xlsx", "Official Stats") %>% 
  rename_with(tolower) %>% 
  arrange(cr, type, name) %>% 
  mutate(speeds = if_else(is_number(substr(speeds, 1, 1)), # Condition
                          paste0("walk ", speeds), # If True
                          speeds)) # If False

## 

