require 'player'

describe Player do
  subject(:player1) {described_class.new("player1")}
  subject(:player2) {described_class.new("player2", 140)}

  context '#name' do
    it 'should give the player name' do
      expect(player1.name).to eq("player1")
    end
  end

  context '#init_points' do
    it 'returns the initial points of the player' do
      expect(player2.init_points).to eq 140
    end
  end

  context '#receive_damage' do
    it 'reduces the hit points by 10' do
      expect{player1.attack(player2)}.to change{player2.points}.by(-10)
    end
  end
end
