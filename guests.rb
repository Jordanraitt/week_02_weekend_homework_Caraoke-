class Guest

attr_accessor :wallet
attr_reader :name

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def reduce_wallet(value)
    @wallet -= value
  end

end
