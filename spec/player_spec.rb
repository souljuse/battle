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

  describe 'receive_damage' do
    it 'reduces the player hit points' do
      expect { player2.receive_damage(10) }.to change{ player2.hit_points }.by (-10)
    end
  end
end
