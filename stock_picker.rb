
#Go through the array
#Each iteration check for the min if min < number max if max is > than number
#Subtract and record the result and index in a variable
#At the end return the value at that specific index

def stock_picker(arr)
  maximum_profit = 0
  day_to_buy = 0
  day_to_sell = 0

  arr.each_index do |current_index|
    maximum_stock_value = arr[current_index..-1].max
    stock_profit = -arr[current_index] + maximum_stock_value
    if(stock_profit > maximum_profit)
      maximum_profit = stock_profit
      day_to_buy = current_index
      day_to_sell = arr.find_index(maximum_stock_value)
    end 
  end
  return [day_to_buy, day_to_sell]
end

  puts stock_picker([17,3,6,9,15,8,6,1,10])