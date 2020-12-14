library(readr)
pokedex <- read_csv("Pokemon project/pokedex_(Update_05.20).csv")
View(pokedex)
outliers_poke = subset(pokedex, height_m < 20 & weight_kg < 900)
plot(outliers_poke$height_m, outliers_poke$weight_kg, main = "Height vs Weight (Without Outliers)", xlab = "Height (meters)", ylab = "Weight (Kg)")
outliers_poke.lm = lm(weight_kg ~ height_m, data = outliers_poke)
outliers_poke.lm
abline(outliers_poke.lm, col = "red")
summary(outliers_poke.lm)$r.squared
hist(resid(outliers_poke.lm), main = "Histogram of Residuals (Without Outliers)", xlab = "Residuals")
plot(outliers_poke$height_m, resid(outliers_poke.lm), main = "Residuals for Height (Without Outliers)", xlab = "Actual observed response (Height)", ylab = "Residuals")
abline(h = 0, col = "red")
