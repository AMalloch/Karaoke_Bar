require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")

class Room_Test < MiniTest::Test

  def setup

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

    song_list_rock = playlist[:rock]
    song_list_pop = playlist[:pop]
    song_list_funk = playlist[:funk]


    @roomrock = Room.new("Rock room", 8, song_list_rock)
    @roompop = Room.new("Pop room", 8, song_list_pop)
    @roomfunk = Room.new("Funk room", 8, song_list_funk)
    @song = Song.new("Lounge Music", "Bored Muscian")
    @guest = Guest.new("Ffej Tunnels", 50, "Wonderwall")

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

  def test_guest_song
    @roomrock.guest_song(@guest.fav_song)
    assert_equal("Wonderwall", @roomrock.song_playing)
    assert_equal("Wonderwall", @guest.fav_song)
  end

  # def test_change_song_playing__rock_room
  #   current_song = @roomrock.song_playing()
  #   assert_equal("Purple Haze", current_song)
  # end

  def test_till_amount
    assert_equal(0 , @roomrock.till_amount)
  end

end
