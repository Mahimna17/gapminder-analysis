# Question 2: Evolution of life expectancy in the UK over time

# Load dataset using a relative file path
gapminder <- read.csv("gapminderDataFiveYear.csv")

# Filter for the United Kingdom and sort by year
uk_data <- subset(gapminder, country == "United Kingdom")
uk_data <- uk_data[order(uk_data$year), ]

# Print UK life expectancy over time
print(uk_data[, c("year", "lifeExp")])

# Save a line plot as a PNG using a relative path
png("question_2_uk_lifeexp.png", width = 800, height = 600)
plot(
  uk_data$year,
  uk_data$lifeExp,
  type = "b",
  main = "Life Expectancy in the UK Over Time (1952-2007)",
  xlab = "Year",
  ylab = "Life Expectancy (Years)",
  pch = 19,
  col = "darkblue",
  lwd = 2
)
dev.off()
