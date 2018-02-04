require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")
require_relative('../drink')

class Guest_Test < MiniTest::Test
#bear
  def setup
                        #Jeff Bridges
    @guest = Guest.new("Ffej Tunnels", 50, "Wonderwall")
    @drink = Drink.new("Madeira Pince-Nez", 4)

  end

  def test_name
    assert_equal("Ffej Tunnels", @guest.name)
  end

  def test_wallet_amount
    assert_equal(100, @guest.wallet)
  end

  def test_customer_drinks_in_belly__empty
    assert_equal(0, @guest.drinks_in_belly)
  end

  def test_customer_get_drink
    @guest.get_drink(@drink)
    assert_equal(1, @guest.drinks_in_belly)
  end

  def test_customer_pay_for_drink
    @guest.pay_for_drink(@drink)
    assert_equal(96, @guest.wallet)
  end

end
