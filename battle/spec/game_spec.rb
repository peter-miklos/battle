require 'game'

describe Game do

subject (:game) {described_class.new}
let (:player) { double :player, receive_damage: true }

  describe '#attack' do
    it 'damages player 2' do
      expect(player).to receive(:receive_damage)
      game.attack(player)
    end
  end

end
