## stock-picker project 
## takes an array of stocks prices, one for a hypothetical day.
##returns a pair of days representing the best day to buy and to sell to maximise profit 

## compare each day to find the biggest difference. 


def stock_picker (array)
    start_price = array[0]
    start_i = 0 

    profit = 0

    days = [0, 0]
    

    array.each_with_index do |num, index|
        if num < start_price
            start_price = num
            start_i = index
            next
        end 

        if num - start_price > profit
            profit = num - start_price
            days = [start_i, index]
        end
    end
    days
end

p stock_picker([17,3,6,9,15,8,6,1,10])


