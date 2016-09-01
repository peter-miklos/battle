class Player

  attr_reader :name, :hitpoint

  def initialize(name)
    @name = name
    @hitpoint = 100
  end

  def receive_damage
    @hitpoint -= 10
  end

end
