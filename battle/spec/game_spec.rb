require 'game'

describe Game do
subject (:game) {described_class.new(player1, player2)}
let (:player1) { double :player1, receive_damage: true }
let (:player2) { double :player2, receive_damage: true }

  describe '#attack' do
    it 'damages player 2' do
      expect(player1).to receive(:receive_damage)
      game.attack(player1)
    end
  end

  describe '#switch_turns' do
    it 'switches from player 1 to player 2' do
      game.switch_turns
      expect(game.attacker).to eq player2
    end
    it 'switches from player 2 to player 1' do
      game.switch_turns
      game.switch_turns
      expect(game.attacker).to eq player1
    end
  end

end
