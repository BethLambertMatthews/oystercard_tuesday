class TFL_prices
  TFL_MINIMUM_FARE = 1000
  def initialize
    @MINIMUM_FARE = 1
  end

attr_reader :MINIMUM_FARE

  def check_minimum_fare
    return @MINIMUM_FARE
  end

end
