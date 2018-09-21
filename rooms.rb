class Room

attr_accessor :room_capacity, :tab
attr_reader :song_list

  def initialize(song_list)
    @room_capacity = 0
    @tab = 0
    @song_list = song_list
  end

end
