require("minitest/autorun")
require("minitest/rg")

require_relative("../rooms.rb")
require_relative("../songs.rb")

class Rooms_Test < MiniTest::Test
#river
  def setup
    song_col_rock = (@songs(song_collection)[:rock])
    song_col_pop = (@songs(song_collection)[:pop])
    song_col_funk = (@songs(song_collection)[:funk]
    room1 = ("Rock_room", 8, song_col_rock)
    room2 = ("Pop_room", 8, song_col_pop)
    room3 = ("Funk_room", 8, song_col_funk)

    @rooms = [ room1, room2, room3]
    @rooms Rooms.new(@rooms)

  end

  #if room = "Rock room" play song_collection[:rock] ?

  def



  end

end
