require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")
require_relative("../bar.rb")

class Bar_Test < MiniTest::Test

  def setup

    @bar = Bar.new("Y Factor", 0)

  end

  def test_till_amount
    assert_equal(0 , @bar.till)
  end


end
