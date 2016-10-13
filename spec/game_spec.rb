require 'game'

describe Game do
  let(:player1) { double :player, hit_points: 20 }
  let(:player2) { double :player, hit_points: 20 }
  subject(:game) { described_class.new(player1, player2) }

  describe "#is_attack" do
    it "should reduce the player's HP by 10 points" do
      expect{ game.attack(player1) }.to change {player1.hit_points}.by(-10)
    end
  end
end
