require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")

class GuestsTest < MiniTest::Test

  def setup
    @guest_01 = Guest.new("John", 15)
    @guest_02 = Guest.new("Mark", 10)
    @guest_03 = Guest.new("Peter", 11)
    @guest_04 = Guest.new("James", 19)
    @guest_05 = Guest.new("Andrew", 14)
    @guest_06 = Guest.new("Philip", 16)
    @guest_07 = Guest.new("Thomas", 16)
    @guest_08 = Guest.new("Matt", 12)
    @guest_09 = Guest.new("Simon", 14)
    @guest_10 = Guest.new("Bart", 15)
    @guest_11 = Guest.new("Luke", 10)
    @guest_12 = Guest.new("Matthias", 17)
    @guest_13 = Guest.new("Thaddaeus", 18)
    @guest_14 = Guest.new("Jesus", 666)
    @guest_15 = Guest.new("Judas", 13)
  end

  def test_guest_name()
    assert_equal("John", @guest_01.name)
  end

  def test_guest_wallet()
    assert_equal(15, @guest_01.wallet)
  end

  def test_reduce_wallet()
    @guest_01.wallet -= 1
    assert_equal(14, @guest_01.wallet)
  end

end
