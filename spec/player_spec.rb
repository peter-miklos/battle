require 'player'

describe Player do
  subject(:player1) {described_class.new("player1")}
  subject(:player2) {described_class.new("player2")}

  context '#name' do
    it 'should give the player name' do
      expect(player1.name).to eq("player1")
    end
  end

  context '#receive_damage' do
    it 'reduces the hit points by 10' do
      expect{player1.attack(player2)}.to change{player2.points}.by(-10)
    end

    # it "returns warning message if the point cannot be deducted" do
    #   20.times { player1.receive_damage }
    #   expect(player1.receive_damage).to eq "player1 lost the game"
    # end
  end
end
