class Oystercard

  def initialize(starting_balance)
    @balance = starting_balance
    @MAXIMUM_LIMIT = 90
  end

attr_reader :balance

  def top_up(amount)
    new_balance = (@balance + amount)

    if  new_balance <= @MAXIMUM_LIMIT
      @balance = new_balance
      return  @balance
    else
      p "Maximum limit of #{@MAXIMUM_LIMIT} reached"
    end   

  end

  def deduct(fare)
    new_balance = (@balance - fare)
    @balance = new_balance
  end


end
