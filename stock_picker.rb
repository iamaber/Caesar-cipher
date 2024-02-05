def stock_picker(prices)
  max_profit = 0
  best_days = [0, 0] # Default values

  # Iterate through each day as a potential buying day
  prices.each_with_index do |buy_price, buy_day|
    # Iterate through the remaining days as potential selling days
    prices[(buy_day + 1)..-1].each_with_index do |sell_price, sell_day_relative|
      sell_day = sell_day_relative + buy_day + 1

      # Calculate the potential profit
      profit = sell_price - buy_price

      # Update best_days if the current pair yields a higher profit
      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  return best_days
end

# Example usage:
stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
result = stock_picker(stock_prices)

puts "Stock Prices: #{stock_prices}"
puts "Best Days to Buy and Sell: #{result}"