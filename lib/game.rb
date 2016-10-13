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
end
