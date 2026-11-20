# Question 1: Relationship between life expectancy and GDP per capita in 2007

# Load dataset using a relative file path
gapminder <- read.csv("gapminderDataFiveYear.csv")

# Filter for 2007
data_2007 <- subset(gapminder, year == 2007)

# Calculate correlation and summary statistics
cor_val <- cor(data_2007$gdpPercap, data_2007$lifeExp)
cat("Correlation between GDP per capita and life expectancy in 2007:", round(cor_val, 3), "\n")
print(summary(data_2007[, c("gdpPercap", "lifeExp")]))

# Save a scatter plot as a PNG using a relative path
png("question_1_scatterplot.png", width = 800, height = 600)
plot(
  data_2007$gdpPercap,
  data_2007$lifeExp,
  main = "Life Expectancy vs. GDP per Capita (2007)",
  xlab = "GDP per Capita (USD)",
  ylab = "Life Expectancy (Years)",
  pch = 19,
  col = rgb(0.1, 0.4, 0.7, 0.6)
)
dev.off()
