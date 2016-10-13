require_relative 'player'

class Game

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end 

  attr_reader :current_player#, :game_over, :loser

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch
    @current_player = opponent_of(@current_player)
  end

  def attack(player)
    player.receive_damage
  end

  def opponent
    opponent_of(current_player)
  end

  def game_over?
    !loser.nil?
  end

  def loser
    @players.select { |p| p.hit_points <= 0 }.first
  end

  private

  def opponent_of(player)
    @players.select { |p| p != player }.first
  end
end
