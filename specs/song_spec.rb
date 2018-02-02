require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")

class Song_Test < MiniTest::Test

  def setup

    @song = Song.new("Wonderwall", "Oasis")

  end

  def test_get_name
    assert_equal("Wonderwall", @song.name)
  end

  def test_get_artist
    assert_equal("Oasis", @song.artist)
  end

end
