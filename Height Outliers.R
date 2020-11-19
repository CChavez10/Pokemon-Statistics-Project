library(readr)
pokedex <- read_csv("Pokemon project/pokedex_(Update_05.20).csv")
View(pokedex)
height2 = subset(pokedex, height_m < 20)
height2
hist(height2$height_m, main = "Height Witout Outliers", xlab = "Height (meters)", ylab = "Frequency")

