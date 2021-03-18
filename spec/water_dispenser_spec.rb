require_relative '../lib/water_dispenser'
class FakeVessel
  def initialize (volume = 10)
    @volume = volume
  end
  
  def volume
    @volume
  end
end

describe 'A water dispenser' do
  let (:fake_reservoir) {100}
  let (:water_dispenser) {WaterDispenser.new(:fake_reservoir)}
  # let (:vessel) {Vessel.new('FAKE', 10)}

  it 'has a reservoir' do
    expect(water_dispenser).to respond_to(:reservoir)
  end

  describe 'has method(s)' do
    it 'can dispense' do
      expect(water_dispenser.dispense(FakeVessel.new)).to eq(10) 
   end  
  end

end
