require 'attack'
describe Attack do

  subject(:attack) {described_class.new(player1)   }
  let(:player1)    {double(:player, hit_points: 60)}

  describe 'tackle' do
    it 'should take off random damage 1-10' do
      allow(player1).to receive(:tackle).and_return(10)
      expect(tackle).to eq 10
    end
  end

  describe 'fire-ball' do
    it 'should deal 5 damage' do
    expect(fire-ball).to eq 5
  end
end

 describe 'death-punch!' do
   it 'should deal 20 damage' do
     expect(death-punch).to eq 20
   end
 end

end
