class CashRegister
    attr_accessor :discount
    attr_accessor :total
    attr_accessor :items
    attr_accessor :last_item_price

    def initialize discount = 0
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item (title, price, quantity = 1)
        self.total += price * quantity
        @last_item_price = price * quantity
        quantity.times {self.items << title}
    end

    def apply_discount
        if @discount > 0
            self.total -= (self.total * @discount / 100)
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= @last_item_price
    end
end