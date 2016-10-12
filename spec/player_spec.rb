require 'player'

describe Player do
  subject(:player) { (Player.new ("Bob")) }
  
  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq "Bob"
    end
  end
end