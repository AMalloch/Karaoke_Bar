require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")
require_relative("../room.rb")

class Bar_Test < MiniTest::Test

  def setup

    @bar = Bar.new("Undrama Pyjamas", 0, "Rock Room")

  end


end
