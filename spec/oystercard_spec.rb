require 'oystercard_class'

RSpec.describe Oystercard do

  before(:each) do
    @my_oystercard_a = Oystercard.new(10)
    @my_oystercard_b = Oystercard.new(20)
  end

  describe "#initialize" do
    it 'checks that the Oystercard class exists' do
      expect(@my_oystercard_a.respond_to?(:oystercard))
    end
  end

  describe "#balance" do
    it 'checks that a new card has a balance' do
      expect(@my_oystercard_a.balance).to eq 10
    end
  end

  describe "#top_up" do
    it 'should add money to the balance, and take in the amount as an argument' do
      expect(@my_oystercard_a.top_up(20)).to eq 30
    end
  
    it 'should add money to the balance, and take in the amount as an argument' do
      expect(@my_oystercard_b.top_up(30)).to eq 50
    end  

    it 'should raise error when maximum balance of 90 reached' do
      expect(@my_oystercard_b.top_up(71)).to eq "Maximum limit of 90 reached"
    end

    it 'should not allow money to be added if this would be more than the maximum balance' do
      @my_oystercard_b.top_up(71)
      expect(@my_oystercard_b.balance).to eq 20
    end

  end

  describe "#deduct" do
    it 'deducts the fare from my card' do
      expect(@my_oystercard_b.deduct(5)).to eq 15
    end

    # it 'checks my balance is correct after deducting a fare' do
    #   @my_oystercard_b.deduct(5)
    #   expect(@my_oystercard_b.balance).to eq 15
    # end

  end

  describe "#in_journey?" do
    it 'checks the journey status of a new oystercard' do
      expect(@my_oystercard_b.in_journey?).to eq false
    end
  end

  describe "#touch_in" do
    it 'it changes the oystercard status to on a journey (@on_a_journey = true)' do
      expect(@my_oystercard_b.touch_in).to eq true
    end
  end

  describe "#touch_out" do
    it 'it changes the oystercard status to not on a journey (@on_a_journey = false)' do
      expect(@my_oystercard_b.touch_out).to eq false
    end
  end

end
