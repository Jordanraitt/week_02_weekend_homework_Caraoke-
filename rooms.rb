class Room

attr_accessor :tab
attr_reader :song_list, :room_capacity

  def initialize(room_capacity = [], song_list = [])
    @room_capacity = room_capacity
    @tab = 0
    @song_list = song_list
  end

  def add_guest(guest)
    @room_capacity.push(guest)
  end

  def remove_guest(guest)
    @room_capacity.delete(guest)
  end

  def get_guest_count
    @room_capacity.length
  end

  def add_song(song)
    @song_list.push(song)
  end

  def get_song_count
    @song_list.length
  end

# def add_song()
#
# if
#
# end




# def my _menu
#   puts '1'
#   puts
#   puts
#
#   if response == '1'
#     puts "enter name"
#     passanger_name = gets.chomp
#     flight_202.add_passanger(passanger.new(passanger_name))
#   end
end
