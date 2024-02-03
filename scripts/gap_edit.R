library(tidyverse)
library(gapminder)
gapminder

dir.create("data")

gapminder %>% 
  select(country, continent, year, gdpPercap) %>% 
  pivot_wider(names_from="year",
              values_from="gdpPercap") %>% 
  write_csv("data/gdp_pc.csv")


gapminder %>% 
  select(country, continent, year, lifeExp) %>% 
  pivot_wider(names_from="year",
              values_from="lifeExp") %>% 
  write_csv("data/life_exp.csv")


gapminder %>% 
  select(country, continent, year, pop) %>% 
  pivot_wider(names_from="year",
              values_from="pop") %>% 
  write_csv("data/pop.csv")
