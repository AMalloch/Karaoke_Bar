require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")

class Song_Test < MiniTest::Test
#fish
  def setup

    @title Song.new(song_collection)

  end


end
