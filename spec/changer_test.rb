require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/changer'

class ChangerTest < MiniTest::Test

  def test_changer_exists
    assert(Changer)
  end

  def test_run_works
    assert_respond_to(Changer, :run)
  end

  def test_equally_divisible_by_twenty_five
    result = Changer.run(25)

    assert_equal([25], result)
  end

  def test_return_amount_divisible_by_twenty_five
    result = Changer.run(50)

    assert_equal(([25, 25]), result)
  end

  # def test_return_change_after_dividing_by_twenty_five
  #   result = Changer.run(27)

  #   assert_equal(([25, 2]), result)
  # end

  def test_return_amount_divisible_by_ten
    result = Changer.run(60)

    assert_equal(([25, 25, 10]), result)
  end

   def test_return_amount_divisible_by_five
    result = Changer.run(65)

    assert_equal(([25, 25, 10, 5]), result)
  end
end
