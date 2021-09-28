require "TFL_prices"

RSpec.describe TFL_prices do

  it 'checks the value of the MINIMUM_FARE' do
    expect(subject.MINIMUM_FARE).to eq 1
  end

  it 'checks the value of the MINIMUM_FARE' do
    expect(subject.check_minimum_fare).to eq 1
  end

end
