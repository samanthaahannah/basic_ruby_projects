def stock_picker(array)
  b_day = s_day = max_profit = 0

  array.each_with_index do |b_price, b_idx|
    array.each_with_index do |s_price, s_idx|
      next unless s_idx > b_idx

      profit = s_price - b_price
      next unless profit > max_profit

      max_profit = profit
      b_day = b_idx
      s_day = s_idx
    end
  end
  puts "Buy on day #{b_day} and sell on day #{s_day} for a maximum profit of £#{max_profit}"
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
