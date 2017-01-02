require 'game'
require 'player'

describe Game do
  let(:game) { Game.new(player1, player2) }
  let(:player1) { double(:player, hit_points: 0) }
  let(:player2) { double(:player, hit_points: 50) }

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
  
  describe '#switch' do
    it 'switches the current player' do
      game.switch
      expect(game.current_player).to eq (player2)
    end
  end
  
  describe '#opponent' do
    it 'should return the opposite player' do
      expect(game.opponent).to eq (player2)
    end
  end
  
  describe '#game_over' do
    it 'should return true if either player reaches 0 hp or less' do
      expect(game.game_over?).to be true  
    end
  end
  
  describe '#loser' do
    it 'should return the losing player' do
    expect(game.loser).to eq (player1)
    end
  end
end