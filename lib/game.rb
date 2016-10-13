require_relative 'player'

class Game

  attr_reader :current_player

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
  
  private
  
  def opponent_of(player)
    @players.select { |p| p != player }.first
  end
end
