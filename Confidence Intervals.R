library(readr)
pokedex <- read_csv("Pokemon project/pokedex_(Update_05.20).csv")
View(pokedex)
xbar = mean(pokedex$height_m)
s = sd(pokedex$height_m)
n = 1028
t = qt(0.95,1027)
L = xbar - t*s/sqrt(n)
U = xbar = + t*s/sqrt(n)
