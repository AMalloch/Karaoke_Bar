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

    @room = Room.new("Rock Room", 8, playlist)
    @song = Song.new("Wonderwall", "Oasis")
    @guest = Guest.new("Ffej Tunnels")

  end

  #if room = "Rock room" play song_collection[:rock] ?
  #
  def test_current_guests_number
    assert_equal(0, @room.current_guests_number)
  end

  def test_add_guest
    @room.add_guest(@guest)
    assert_equal(1, @room.current_guests_number())
  end

  def test_remove_guest
    @room.add_guest(@guest)
    @room.remove_guest(@guest)
    assert_equal(0, @room.current_guests_number())
  end


end
