class Oystercard

  def initialize(starting_balance)
    @balance = starting_balance
    @MAXIMUM_LIMIT = 90
    @MINIMUM_FARE = 1
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
    fail "Insufficient card balance" if @balance < @MINIMUM_FARE
    @on_a_journey = true
  end

  def touch_out
    @on_a_journey = false
  end

end
