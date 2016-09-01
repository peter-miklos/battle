require 'game'

describe Game do
  subject(:game) {described_class.new}
  let(:player1) {double :player1}
  let(:player2) {double :player2}

  context '#attack' do
    it "calls the #receive_damage method on the attacked player object" do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
end
