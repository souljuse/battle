require 'game'
require 'player'

describe Game do
  let(:game) { Game.new(player1, player2) }
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#player_1' do
    it 'accepts player 1' do
      expect(game.player_1).to eq player1
    end
  end

  describe '#player_2' do
    it 'accepts player 2' do
      expect(game.player_2).to eq player2
    end
  end
end
