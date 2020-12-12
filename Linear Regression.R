library(readr)
pokedex <- read_csv("Pokemon project/pokedex_(Update_05.20).csv")
View(pokedex)
plot(pokedex$height_m, pokedex$weight_kg, main = "Height vs Weight", xlab = "Height (meters)", ylab = "Weight (Kg)")
height_weight.lm = lm(weight_kg ~ height_m, data = pokedex, na.action = na.exclude)
height_weight.lm
abline(height_weight.lm, col = "red")
summary(height_weight.lm)$r.squared
hist(resid(height_weight.lm), main = "Histogram of Residuals", xlab = "Residuals")
plot(pokedex$height_m, resid(height_weight.lm), main = "Residuals for Height", xlab = "Actual observed response (Height)", ylab = "Residuals")
abline(h = 0, col = "red")
