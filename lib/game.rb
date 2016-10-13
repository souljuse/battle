require_relative 'attack'

class Game

  attr_reader :game

 def self.new_game(player1, player2)
   @game = Game.new(player1, player2)
 end

 def self.instance
   @game
 end


 attr_reader :first_player, :second_player, :the_attack
 def initialize(player1, player2)
   @first_player = player1
   @second_player = player2
   @the_attack = Attack.new
 end

 def attack(player)
  player.is_attacked(@the_attack.tackle)
 end

 def fire_attack(player)
   player.is_attacked(@the_attack.fire_ball)
 end

 def punch_attack(player)
   player.is_attacked(@the_attack.death_punch)
 end

 def switch
   temp = @first_player
   @first_player = @second_player
   @second_player = temp
 end

 def game_over
   if @first_player.hit_points <= 0
     @second_player
   elsif @second_player.hit_points <= 0
     @first_player
   else
     nil
   end
 end
end
