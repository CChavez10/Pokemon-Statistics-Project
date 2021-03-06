library(readr)
pokedex <- read_csv("Pokemon project/pokedex_(Update_05.20).csv")
View(pokedex)
plot(pokedex$height_m, pokedex$weight_kg, main = "Height vs Weight", xlab = "Height (meters)", ylab = "Weight (Kg)")
cor(pokedex$height_m, pokedex$weight_kg, use = "complete.obs")