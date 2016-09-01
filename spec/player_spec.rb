require 'player'

describe Player do
  subject(:player1) {described_class.new("player1")}
  context '#name' do
    it 'should give the player name' do
      expect(player1.name).to eq("player1")
    end
  end
end

# Player.new("player1")
