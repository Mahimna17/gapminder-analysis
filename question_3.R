# Question 3: Top five countries by life expectancy in 1962 vs. 2007

# Load dataset using a relative file path
gapminder <- read.csv("gapminderDataFiveYear.csv")

# Top 5 countries in 1962
data_1962 <- subset(gapminder, year == 1962)
top5_1962 <- head(data_1962[order(-data_1962$lifeExp), c("country", "lifeExp")], 5)

# Top 5 countries in 2007
data_2007 <- subset(gapminder, year == 2007)
top5_2007 <- head(data_2007[order(-data_2007$lifeExp), c("country", "lifeExp")], 5)

cat("Top 5 countries by life expectancy in 1962:\n")
print(top5_1962, row.names = FALSE)

cat("\nTop 5 countries by life expectancy in 2007:\n")
print(top5_2007, row.names = FALSE)

# Save a side-by-side comparison bar chart as a PNG using a relative path
png("question_3_top5_lifeexp.png", width = 1000, height = 500)
par(mfrow = c(1, 2))
barplot(
  top5_1962$lifeExp,
  names.arg = top5_1962$country,
  main = "Top 5 Life Expectancy (1962)",
  ylab = "Life Expectancy (Years)",
  ylim = c(0, 90),
  col = "steelblue",
  las = 2
)
barplot(
  top5_2007$lifeExp,
  names.arg = top5_2007$country,
  main = "Top 5 Life Expectancy (2007)",
  ylab = "Life Expectancy (Years)",
  ylim = c(0, 90),
  col = "darkgreen",
  las = 2
)
dev.off()
