test_array = []
100.times do test_array.push(rand(100))
end
def stock_picker(prices)
    #Implement a method #stock_picker that takes in an array of stock prices,
    # one for each hypothetical day.
    # It should return a pair of days representing the best day
    # to buy and the best day to sell. Days start at 0.

    #You need to buy before you can sell
    #Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.
    best_buy_day = 0
    best_sell_day = 1
    profit = 0
    price1 = 0
    price2 = 0

    if prices.index(prices.min) < prices.index(prices.max)
        puts "Simple method used"
        puts "
            Best day to buy is #{prices.index(prices.min)} at a price of #{prices.min}
            Best day to sell is #{prices.index(prices.max)} at a price of #{prices.max}
            Total profit made: #{prices.max - prices.min}
        "
    else
        prices.each_with_index do |price1, index1|
            prices.each_with_index do |price2, index2|
                if price2 - price1 > profit && index1 < index2
                    profit = price2 - price1
                    best_buy_day = index1
                    best_sell_day = index2
                end
            end

        end
        puts "Complex method used"
        puts "
            The best day to buy is #{best_buy_day} at a price of #{prices[best_buy_day]}
            The best day to sell is #{best_sell_day} at a price of #{prices[best_sell_day]}
            for a total profit of #{profit}
        "
    end



end

# Random test
#print test_array
#stock_picker(test_array)

# Predetermined Test
print [17,3,6,9,15,8,6,1,10]
stock_picker([17,3,6,9,15,8,6,1,10])