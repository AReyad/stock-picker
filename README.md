# Stock-Picker

A Ruby algorithm that analyzes daily stock prices to determine the optimal days for buying and selling to maximize profit.

## About

This project is part of the Ruby Progamming lessons of [The Odin Project](https://www.theodinproject.com/lessons/ruby-stock-picker) curriculum.

## Features

- Identifies the best day to buy a stock and the best day to sell it for maximum profit.
- Returns a message when there's no profit.

## Examples

```ruby
stock_picker([17,3,6,9,15,8,6,1,10]) 
# => [1,4] # for a profit of $15 - $3 == $12
# [1] represents day 1 => price of "$3" and [4] represents day 4 => price of "$15"

stock_picker([9, 8, 7, 6, 5, 4, 3, 2, 1]) 
# => "You cannot make profit out of this stock"
```