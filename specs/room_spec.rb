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

    @roomrock = Room.new("Rock room", 8, song_col_rock)
    @roompop = Room.new("Pop room", 8, song_col_pop)
    @roomfunk = Room.new("Funk room", 8, song_col_funk)


    @song = Song.new("Lounge Music", "Bored Muscian")
    @guest = Guest.new("Ffej Tunnels")

  end

  def test_current_guests_number
    assert_equal(0, @roomrock.current_guests_number)
  end

  def test_add_guest
    @roomrock.add_guest(@guest)
    assert_equal(1, @roomrock.current_guests_number())
  end

  def test_remove_guest
    @roomrock.add_guest(@guest)
    @roomrock.remove_guest(@guest)
    assert_equal(0, @roomrock.current_guests_number())
  end

  def test_song_playing__rock_room
    current_song = @roomrock.song_playing()
    assert_equal("Wonderwall", current_song)
  end

  def test_capacity
    @roomrock.add_guest(@guest)
    @roomrock.capacity_check(@guest)
    assert_equal(1, @roomrock.current_guests_number)
  end

end
