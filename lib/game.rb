require_relative 'player'

class Game

  attr_reader :player

  # def initialize(player = Player.new)
  #   @player = player
  # end

  def attack(player)
    player.receive_damage
  end

end
