class Guest

  attr_accessor :name, :wallet, :fav_song

  def initialize (name, wallet, fav_song)

    @name = name
    @wallet = 100
    @fav_song = fav_song
    @beer_belly = []

  end

  def drinks_in_belly
    @beer_belly.length
  end

  def get_drink(drink)
    @beer_belly << drink
  end

  def pay_for_drink(drink)
    @wallet -= (drink.price)
  end

end
