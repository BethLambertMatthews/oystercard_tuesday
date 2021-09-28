class TFL_prices

  def initialize
    @MINIMUM_FARE = 1
  end

attr_reader :MINIMUM_FARE

  def check_minimum_fare
    return @MINIMUM_FARE
  end

end
