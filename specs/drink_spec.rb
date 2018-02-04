require('minitest/autorun')
require('minitest/rg')

require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Madeira Pince-Nez", 4)
  end

  def test_name
    assert_equal("Madeira Pince-Nez", @drink.name)
  end

  def test_price
    assert_equal(4, @drink.price)
  end

end
