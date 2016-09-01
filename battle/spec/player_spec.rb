require 'player'


describe Player do

subject (:player) {described_class.new("Matt")}

  it 'returns its name' do
  expect(player.name).to eq "Matt"
  end

end
