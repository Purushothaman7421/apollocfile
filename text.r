# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(lubridate)
library(tseries)

# 1. Create Synthetic Stock Price Data
set.seed(123)

# Simulating stock data for 5 companies over a 1-year period
dates <- seq.Date(from=as.Date('2023-01-01'), by='days', length.out=365)
companies <- c("AAPL", "GOOGL", "MSFT", "AMZN", "TSLA")

# Generate random stock prices
stock_data <- data.frame(
  Date = rep(dates, times=5),
  Company = rep(companies, each=365),
  Price = c(
    cumsum(rnorm(365, mean=0.5, sd=5)) + 150,   # AAPL
    cumsum(rnorm(365, mean=0.4, sd=4)) + 2800,  # GOOGL
    cumsum(rnorm(365, mean=0.6, sd=3)) + 300,   # MSFT
    cumsum(rnorm(365, mean=0.7, sd=6)) + 3300,  # AMZN
    cumsum(rnorm(365, mean=0.3, sd=8)) + 650    # TSLA
  )
)

# 2. Calculate Moving Averages
stock_data <- stock_data %>%
  group_by(Company) %>%
  mutate(MA_30 = zoo::rollmean(Price, 30, fill=NA, align="right"))

# 3. Investment Strategy: Buy & Hold vs. Moving Average Crossover
# Simulate a simple investment strategy:
# Buy and hold: buy stock at the start of the year and sell at the end.
# Moving Average Crossover: buy when the price is above the 30-day moving average, sell when below.

investment_data <- stock_data %>%
  group_by(Company) %>%
  mutate(
    Buy_Hold_Strategy = ifelse(Date == min(Date), "Buy", ifelse(Date == max(Date), "Sell", NA)),
    MA_Strategy = ifelse(Price > MA_30, "Buy", "Sell")
  )

# 4. Visualizations

# 4.1 Stock Price Movement Over Time (Line Plot)
stock_price_plot <- ggplot(stock_data, aes(x=Date, y=Price, color=Company)) +
  geom_line() +
  theme_minimal() +
  labs(title="Stock Price Movement Over Time", x="Date", y="Stock Price (USD)") +
  theme(legend.position="bottom")

# 4.2 Moving Average Comparison (Line Plot)
moving_average_plot <- ggplot(stock_data, aes(x=Date)) +
  geom_line(aes(y=Price, color=Company), alpha=0.7) +
  geom_line(aes(y=MA_30, color=Company), linetype="dashed", size=1) +
  theme_minimal() +
  labs(title="Stock Price and 30-Day Moving Average", x="Date", y="Stock Price (USD)") +
  theme(legend.position="bottom")

# 4.3 Histogram of Stock Price Distribution (All Companies)
price_distribution_plot <- ggplot(stock_data, aes(x=Price, fill=Company)) +
  geom_histogram(binwidth=20, alpha=0.7, position="identity") +
  theme_minimal() +
  labs(title="Stock Price Distribution", x="Stock Price (USD)", y="Frequency") +
  theme(legend.position="bottom")

# 4.4 Investment Strategy Performance (Bar Plot)
strategy_performance <- investment_data %>%
  group_by(Company, Buy_Hold_Strategy) %>%
  summarise(EndPrice = last(Price), StartPrice = first(Price), .groups = 'drop') %>%
  mutate(Performance = EndPrice - StartPrice)

investment_performance_plot <- ggplot(strategy_performance, aes(x=Company, y=Performance, fill=Buy_Hold_Strategy)) +
  geom_bar(stat="identity", position="dodge") +
  theme_minimal() +
  labs(title="Performance of Buy & Hold Strategy", x="Company", y="Performance (USD)")

# 4.5 Stock Price vs Moving Average Strategy (Scatter Plot)
strategy_comparison_plot <- ggplot(investment_data, aes(x=Price, y=MA_30, color=MA_Strategy)) +
  geom_point(alpha=0.5) +
  theme_minimal() +
  labs(title="Stock Price vs 30-Day Moving Average", x="Stock Price (USD)", y="30-Day Moving Average (USD)")

# 5. Combine all plots into one page
library(gridExtra)
grid.arrange(stock_price_plot, moving_average_plot, price_distribution_plot, investment_performance_plot, strategy_comparison_plot, ncol=2)
