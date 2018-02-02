require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")

class Room_Test < MiniTest::Test
#river
  def setup

    # playlist = [
    #   {rock:[{ name: "Wonderwall", artist: "Oasis"},
    #         { name: "Purple Haze", artist: "Jimi Hendrix"}]},
    #   {pop:[{ name: "Beat It", artist: "Michael Jackson"},
    #        { name: "Spinning Around", artist: "Kylie Minogue"}]},
    #   {funk:[{ name: "September", artist: "Earth Wind and Fire"},
    #         { name: "Superstition", artist: "Stevie Wonder"}]}
    #       ]

      wonderwall = Song.new("Wonderwall", "Oasis")
      purplehaze = Song.new("Purple Haze", "Jimi Hendrix")
      beatit = Song.new("Beat It", "Michael Jackson")
      spinningaround = Song.new("Spinning Around", "Kylie Minogue")
      september = Song.new("September", "Earth Wind and Fire")
      superstition = Song.new("Superstition", "Stevie Wonder")

      playlist = {
        rock: [
                wonderwall, purplehaze
              ],
        pop:  [
                beatit, spinningaround
              ],
        funk: [
                september, superstition
              ]
      }

    song_col_rock = playlist[:rock]
    song_col_pop = playlist[:pop]
    song_col_funk = playlist[:funk]
    room1 = Room.new("Rock room", 8, song_col_rock)
    room2 = Room.new("Pop room", 8, song_col_pop)
    room3 = Room.new("Funk room", 8, song_col_funk)

    @room = [ room1, room2, room3]
    @room = Room.new(name, capacity, playlist)
    @songs = Song.new(song_collection)
    @guests = Guest.new(name)

  end

  #if room = "Rock room" play song_collection[:rock] ?
  #
  def test_current_guests_number
    assert_equals(0, @room.current_guests_number)
  end


end
