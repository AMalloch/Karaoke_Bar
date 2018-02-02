require("minitest/autorun")
require("minitest/rg")

require_relative("../songs.rb")

class Songs_Test < MiniTest::Test
#fish
  def setup

    @title Songs.new(song_titles)

  end


end
