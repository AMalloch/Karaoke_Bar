class Bar

 attr_accessor :name, :till

   def initialize (name, till)

     @name = name
     @till = till

   end

   def till_amount
     @till.sum
   end


end
