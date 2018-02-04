class Bar

 attr_accessor :name

   def initialize (name, total_capacity)

     @name = name
     @till = 0
     @entry_fee = 5
     @total_guests = []
     @total_capacity = total_capacity

   end

   def till_amount
     return @till
   end

   def add_fee_to_till
     @till += @entry_fee
   end

   def total_capacity
     return @total_guests.count
   end

end
