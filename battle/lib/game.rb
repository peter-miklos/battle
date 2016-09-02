class Game

  attr_reader :attacker

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @attacker = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    if @attacker == player_1
       @attacker = player_2
    else
      @attacker = player_1
    end
  end

  def attack(player)
    player.receive_damage
  end
end
