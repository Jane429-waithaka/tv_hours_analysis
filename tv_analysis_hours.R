library(tidyverse)
library(here)
library(dplyr)
data(gss_cat)
names(gss_cat)
gss_cat$age

tv_hours_table<-gss_cat %>% 
  filter(age >=30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours=mean(tvhours, na.rm=TRUE))


write.csv(tv_hours_table,here("Tv_hours by Marital_status"))
