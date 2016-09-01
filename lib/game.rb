class Game

  attr_reader :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(actual_player)
    @players.select {|player| player != actual_player}.first
  end

  def game_over?
    player1.points <= 0 || player2.points <= 0
  end

  def loser
    if player1.points <= 0 then player1
    elsif player2.points <= 0 then player2
    end
  end

  private
  attr_reader :players

end
