class Player
  attr_reader :name, :hit_points

  MAX_HP = 100

  def initialize(name)
    @name = name
    @hit_points = MAX_HP
  end

  def is_attacked
    @hit_points -= damage
  end

  private

  def damage
   Kernel.rand(1..10)
  end

end
