class Room

  attr_accessor :name, :capacity, :playlist

 def initialize (name, capacity, playlist)

   @name = name
   @capacity = capacity
   @playlist = playlist
   @current_guests = []
   @room_till = 0
   @drinks = [
  {name: "Madeira Pince-Nez", price: 4}
  ]

 end
  #
  def current_guests_number
   return @current_guests.count
  end

  def add_guest(guest)
    @current_guests << guest
  end

  def remove_guest(guest)
    @current_guests.pop
  end

  def song_playing
    return @playlist.first.name
  end

  def capacity_check(guest)
    if current_guests_number < @capacity
      p "Come on in pal"
    else false
      p "Not with those shoes mate"
    end
  end

  def guest_song(song)
    if song == song_playing
     p "Woohoo!"
   end
  end

  # def change_song_playing
  #   song_playing.rotate
  # end

  def till_amount
    return @room_till
  end

  def drink_stock
    return @drinks.length
  end

  def add_drink_stock(drink)
    @drinks << drink
  end

  def remove_drink_stock(drink)
    for alcohol in @drinks
      if alcohol == drink
        @drinks.delete(drink)
      end
    end
  end

end
