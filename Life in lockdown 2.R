library(dplyr)
library(readr)

lul2_d <- read.csv('../data/life-under-lockdown-wave2-extract.csv')

lul2_d %>%
  mutate(know_facebook=ordered(know_facebook, 
          levels=c('Nothing at all',
                  'Not very much',
                  'A fair amount',
                  'A great deal'))) %>% 
  group_by(know_facebook) %>%
  summarise(n=n(),Beliefs=mean(beliefs))
