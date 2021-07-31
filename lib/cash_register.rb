
class CashRegister
    attr_accessor :discount , :last_item_price, :items, :total , :quantity


    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_item_price = 0
        @quantity = 0
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)
        @total+=(price*quantity) 
        @last_item_price = price
        @quantity = quantity
        quantity.times{@items<<title}


    end

    def apply_discount
        if self.discount!=0
            @total = total-(total*discount/100)
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        return @items
    end

    def void_last_transaction

        if @items.length > 1
            @items.pop
            @total = total - (last_item_price*quantity)
            
        elsif @items.length <= 1
            @total = 0.0


        end
        return @total
    end
 




end