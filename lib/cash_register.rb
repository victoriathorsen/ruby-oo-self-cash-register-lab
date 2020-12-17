
class CashRegister
    
    attr_accessor :total, :items, :discount

    def initialize (discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

   def add_item (item, price, quantity=1)
        quantity.times do 
            self.items << item
        end
        @last_total = self.total  #just using the instance variable of last_totaal which is why we dont have a reader
        self.total += price * quantity 
   end

   def apply_discount
       if self.discount != 0 
            self.total -= (self.total * self.discount.to_f / 100).to_i
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
       end
    end

    def void_last_transaction
       self.total = @last_total   #can use instance variable to look directly here and dont need it outside this
    end
    

end