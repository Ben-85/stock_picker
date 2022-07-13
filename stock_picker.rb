def stock_picker(price_array)
    lowest = price_array.min
    highest = price_array.max
    while price_array.find_index(lowest) > price_array.find_index(highest)
        price_array.delete_at(price_array.find_index(highest))
        highest = price_array.max
        price_array.delete_at(price_array.find_index(lowest)) if (price_array.find_index(highest) < price_array.find_index(lowest))
        lowest = price_array.min
    end
    return [lowest, highest]
end

def main()
    original_prices = [17,3,6,9,15,8,6,1,10]
    prices = [17,3,6,9,15,8,6,1,10]
    low_high = stock_picker(prices)
    buy_day = original_prices.find_index(low_high[0])
    sell_day = original_prices.find_index(low_high[1])
    profit = original_prices[sell_day] - original_prices[buy_day]
    puts "Buy on day #{buy_day}, and sell on #{sell_day} for a profit of $#{profit}."
end

main()