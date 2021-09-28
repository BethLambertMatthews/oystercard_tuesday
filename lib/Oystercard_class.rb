class Oystercard

  def initialize(starting_balance)
    @balance = starting_balance
    @MAXIMUM_LIMIT = 90
    @on_a_journey = false
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

  def in_journey?
    @on_a_journey
  end

  def touch_in
    @on_a_journey = true
  end

  def touch_out
    @on_a_journey = false
  end

end
