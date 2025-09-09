
def stock_picker(array)
  array_of_profits = []
  best_days = []
  # gets the heighest profit possible
  array.each_with_index do |price, day|
    buy_day = 0
    sell_day = day
    while buy_day < sell_day
      profit = array[sell_day] - array[buy_day] 
      buy_day += 1
      if profit > 0
        array_of_profits.push(profit)
      end
    end
  end
  heighest_profit = array_of_profits.max(1)
  # gets the days that make such profit
  array.each_with_index do |price, day|
    buy_day = 0
    sell_day = day
      while buy_day < sell_day
       profit = array[sell_day] - array[buy_day] 
       if profit == heighest_profit[0] && !best_days[1]
        best_days.push(buy_day, sell_day)
       end
       buy_day += 1
      end
  end
  if best_days != []
    best_days
  else
    "You cannot make profit out of this stock"
  end
end

p stock_picker([17,3,6,9,15,8,6,1,10]) # => [1,4]
p stock_picker([9, 8, 7, 6, 5, 4, 3, 2, 1]) # => No profit
p stock_picker([5, 1]) # => No profit
p stock_picker([3, 3, 3, 3]) # => No profit