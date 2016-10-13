class Game
 attr_reader :first_player, :second_player

 def initialize(player1, player2)
   @first_player = player1
   @second_player = player2
 end

 def attack(player)
  player.is_attacked
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
