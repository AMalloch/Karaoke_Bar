class Venue

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

   def total_guests
     return @total_guests.count
   end

   def add_guest(guest)
     @total_guests << guest
   end

   def remove_guest(guest)
     @total_guests.pop
   end

   def new_guest(guest)
     add_fee_to_till
     add_guest
   end

end
