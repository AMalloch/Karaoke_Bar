require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")
require_relative("../venue.rb")

class Venue_Test < MiniTest::Test

  def setup

    @venue = Venue.new("Y Factor", 30)
    @guest = Guest.new("Ffej Tunnels", 50)

  end

  def test_till_amount
    assert_equal(0 , @venue.till_amount)
  end

  def test_add_fee_to_till
    @venue.add_fee_to_till
    assert_equal(5, @venue.till_amount)
  end

  def test_total_guests
    assert_equal(0, @venue.total_guests)
  end

  def test_add_guest
    @venue.add_guest(@guest)
    assert_equal(1, @venue.total_guests())
  end
  #
  def test_remove_guest
    @venue.add_guest(@guest)
    @venue.remove_guest(@guest)
    assert_equal(0, @venue.total_guests())
  end
  #
  def test_new_guest
    @venue.add_fee_to_till
    @venue.add_guest(@guest)
    assert_equal(1, @venue.total_guests())
    assert_equal(5, @venue.till_amount)
  end


end
