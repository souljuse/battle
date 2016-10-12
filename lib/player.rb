class Player

<<<<<<< HEAD
  attr_reader :name

  def initialize(name)
=======
  attr_reader :name, :hit_points

  DEFAULT_HITPOINTS = 50
  
  def initialize(name, hit_points = DEFAULT_HITPOINTS)
>>>>>>> 72df339b9f0b366799a31d91e9a5afd2ba74c738
    @name = name
    @hit_points = hit_points
  end
  
  def attack(player)
    player.receive_damage
  end
  
  def receive_damage
    @hit_points -= 10
  end

end
