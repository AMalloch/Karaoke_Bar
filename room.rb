class Room

  attr_accessor :name, :capacity, :playlist

 def initialize (name, capacity, playlist)

   @name = name
   @capacity = 8
   @playlist = playlist
   @current_guests = []

 end
  #
  def current_guests_number
   return @current_guests.count
  end

end
