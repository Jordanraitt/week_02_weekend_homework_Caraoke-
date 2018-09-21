require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")

class RoomsTest < MiniTest::Test

  def setup()

    @song_01 = Song.new("Careless_whisper")
    @song_02 = Song.new("Killer_queen")
    @song_03 = Song.new("This_is_America")
    @song_04 = Song.new("Shikantaza")
    @song_05 = Song.new("Everybody_dance")
    @song_06 = Song.new("Retro")
    @song_07 = Song.new("Don't_leave_me_this_way")
    @song_08 = Song.new("Trouble")
    @song_09 = Song.new("The_world_(is_going_up_in_flames)")
    @song_10 = Song.new("I_was_made_to_love_her")

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

    @room = Room.new([@guest_02],[@song_01])
  end

  def test_has_guest
    assert_equal([@guest_02] ,@room.room_capacity)
  end

  def test_has_song()
    assert_equal([@song_01], @room.song_list)
  end

  def test_guest__add()
    @room.add_guest(@guest_01)
    assert_equal(2, @room.get_guest_count)
  end

  def test_guest__remove()
    @room.add_guest(@guest_01)
    @room.remove_guest(@guest_01)
    assert_equal(1, @room.get_guest_count)
  end

  def test_song__add()
    @room.add_song(@song_02)
    assert_equal(2, @room.get_song_count)
  end

  def test_capacity_check__true()
    result = @room.capacity_check
    assert_equal(true, result)
  end

  def test_capacity_check__false()
    14.times{@room.add_guest(@guest_01)}
    result = @room.capacity_check
    assert_equal(false, result)
  end

end
