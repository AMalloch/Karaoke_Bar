require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")

class Guest_Test < MiniTest::Test
#bear
  def setup

    @guest = Guest.new("Ffej Tunnels", 50)
                        #Jeff Bridges
  end

end
