class CashRegister

    attr_accessor :total, :discount,:quantity, :added_item_total
   
    def initialize(emp_discount = 0)
        @total = 0
        @discount = emp_discount
        if @discount == 0
            puts "there is not discount to apply"
        end
        @arr = []
    end

    
    def total
        @total
    end

    def add_item(title,price,quantity = 1)
        
        @quantity = quantity 
        self.total += price * @quantity
        @arr.fill(title, @arr.size, quantity)  
        self.added_item_total = price * quantity
    end

    def apply_discount
        self.total = self.total - (self.total * @discount / 100)
        if @discount == 0
            return "There is no discount to apply."
        else
        return "After the discount, the total comes to $#{self.total}."
        end
    end

    def items
        @arr
    end

    def void_last_transaction
        self.total = self.total - self.added_item_total
    end

    

end