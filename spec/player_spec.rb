require 'player'

describe Player do
  subject(:player1) { (Player.new ("Bob")) }
  subject(:player2) { (Player.new ("Larry")) }
  
  describe '#name' do
    it 'returns the name' do
      expect(player1.name).to eq "Bob"
    end
  end
  
  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player1.hit_points).to eq described_class::DEFAULT_HITPOINTS
    end
  end
  
  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end
  
  describe 'receive_damage' do
    it 'reduces the player hit points' do
      expect { player2.receive_damage }.to change{ player2.hit_points }.by (-10)
    end
  end
end