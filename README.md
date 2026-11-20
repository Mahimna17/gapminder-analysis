# Gapminder Life Expectancy & GDP Analysis

This repository contains R scripts and visualizations exploring trends in life expectancy and GDP per capita using the Gapminder dataset (`gapminderDataFiveYear.csv`).

## Dataset
- **File:** `gapminderDataFiveYear.csv`
- **Source:** Gapminder Foundation (142 countries from 1952 to 2007 in 5-year intervals).
- **Variables:** `country`, `year`, `pop`, `continent`, `lifeExp`, and `gdpPercap`.

## Research Questions & Main Results

### 1. What is the relationship between life expectancy and GDP per capita in 2007?
- **Script:** `question_1.R`
- **Output:** `question_1_scatterplot.png`
- **Main Finding:** Strong positive correlation (r = 0.679) between GDP per capita and life expectancy in 2007, with diminishing returns at higher income levels.

### 2. How has life expectancy in the UK evolved over time?
- **Script:** `question_2.R`
- **Output:** `question_2_uk_lifeexp.png`
- **Main Finding:** UK life expectancy rose steadily in every 5-year interval from **69.18 years** in 1952 to **79.43 years** in 2007.

### 3. Which five countries had the highest life expectancy in 1962? Has this changed in 2007?
- **Script:** `question_3.R`
- **Output:** `question_3_top5_lifeexp.png`
- **Main Finding:**
  - **1962 Top 5:** Iceland (73.68), Norway (73.47), Sweden (73.37), Netherlands (73.23), and Denmark (72.35).
  - **2007 Top 5:** Japan (82.60), Hong Kong, China (82.21), Iceland (81.76), Switzerland (81.70), and Australia (81.23). Only **Iceland** remained in the top five in both years.

## How to Run the Scripts

1. Clone this repository and enter the directory:
   ```bash
   git clone https://github.com/Mahimna17/gapminder-analysis.git
   cd gapminder-analysis
   ```
2. Run each script from the repository root directory:
   ```bash
   Rscript question_1.R
   Rscript question_2.R
   Rscript question_3.R
   ```
