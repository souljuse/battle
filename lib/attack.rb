class Attack

  def tackle
    Kernel.rand(1..10)
  end

  def fire_ball
    5
  end

  def death_punch
    [20, 0].sample
  end

end
