require 'game'

describe Game do
  let(:player1) {double :player1}
  let(:player2) {double :player2}
  subject(:game) {described_class.new(player1, player2)}

  context "#initialize" do
    it "stores player1 object" do
      expect(game.player1).to eq player1
    end

    it "stores player2 object" do
      expect(game.player2).to eq player2
    end
  end

  context '#attack' do
    it "calls the #receive_damage method on the attacked player object" do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  context "#switch_turns" do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player2
    end
  end

  context "#opponent_of" do
    it "finds the opponent of the player1" do
      expect(game.opponent_of(player1)).to eq player2
    end

    it "finds the opponent of the player2" do
      expect(game.opponent_of(player2)).to eq player1
    end
  end
end
