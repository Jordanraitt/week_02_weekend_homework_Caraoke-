require("minitest/autorun")
require("minitest/rg")
require_relative("../songs.rb")

class SongsTest < MiniTest::Test

  def setup
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
  end

  def test_song_name()
    assert_equal("Careless_whisper", @song_01.name)
  end

end
