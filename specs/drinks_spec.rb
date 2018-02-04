require('minitest/autorun')
require('minitest/rg')

require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Methanol", 4, 1)
  end

  def test_name
    assert_equal("Methanol", @drink.name)
  end

  def test_price
    assert_equal(4, @drink.price)
  end

end
