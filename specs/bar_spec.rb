require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")
require_relative("../bar.rb")

class Bar_Test < MiniTest::Test

  def setup

    @bar = Bar.new("Y Factor", 30)
    @guest = Guest.new("Ffej Tunnels", 50)

  end

  def test_till_amount
    assert_equal(0 , @bar.till_amount)
  end

  def test_add_fee_to_till
    @bar.add_fee_to_till
    assert_equal(5, @bar.till_amount)
  end

  def test_total_guests
    assert_equal(0, @bar.total_guests)
  end

  def test_add_guest
    @bar.add_guest(@guest)
    @bar.add_fee_to_till
    assert_equal(1, @bar.total_guests())
    assert_equal(5, @bar.till_amount)
  end

  def test_remove_guest
    @bar.add_guest(@guest)
    @bar.remove_guest(@guest)
    assert_equal(0, @bar.total_guests())
  end


end
