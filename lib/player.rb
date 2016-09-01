class Player
  DEFAULT_POINTS = 200

  attr_reader :name, :points

  def initialize(name, init_points = DEFAULT_POINTS)
    @name = name
    @points = init_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @points -= 10
  end

end
