require 'attack'
describe Attack do

  subject(:attack) {described_class.new }
  let(:player1)    {double(:player, hit_points: 60)}

  describe 'tackle' do
    it 'should take off random damage 1-10' do
      allow(attack).to receive(:tackle).and_return(10)
      expect(attack.tackle).to eq 10
    end
  end

  describe 'fire-ball' do
    it 'should deal 5 damage' do
      expect(attack.fire_ball).to eq 5
    end
  end

 describe 'death-punch!' do
   it 'should deal 20 damage' do
     allow(attack).to receive(:death_punch).and_return(20)
     expect(attack.death_punch).to eq 20
   end
 end

end
