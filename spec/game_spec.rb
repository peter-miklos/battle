require 'game'

describe Game do
  let(:player1) {double(:player1, points: 30)}
  let(:player2) {double(:player2, points: 20)}
  let(:player3) {double(:player3, points: 0)}
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

  context "#game_over?" do
    it "returns true if any of the players has 0 or less than 0 points" do
      other_game = described_class.new(player1, player3)
      expect(other_game.game_over?).to eq true
    end

    it "returns false if both of the players have more than 0 points" do
      expect(game.game_over?).to eq false
    end
  end
end
