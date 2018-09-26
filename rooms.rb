class Room

attr_accessor :tab, :room_capacity, :price
attr_reader :song_list

  def initialize(room_capacity = [], song_list = [], price)
    @room_capacity = room_capacity
    @till = 0
    @song_list = song_list
    @price = price
  end

  def add_guest(guest)
    if capacity_check
      # && guest.enough_money_in_wallet
    @room_capacity.push(guest)
    else
      p "Too many in the room."
    end
  end

  def remove_guest(guest)
    @room_capacity.delete(guest)
  end

  def capacity_check()
   get_guest_count <= 14
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

  def increase_tab(price)
    @till += price
  end

  def transaction(guest, price)
    guest.reduce_wallet(price)
    increase_tab(price)
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
