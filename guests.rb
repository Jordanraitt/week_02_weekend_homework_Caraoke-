class Guest

attr_accessor :wallet
attr_reader :name

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def reduce_wallet(value)
    if enough_money_in_wallet == true
      @wallet -= value
    else
      p "Not enough money, buddy."
    end
  end

  def enough_money_in_wallet(value)
     @wallet >= value
  end

end
