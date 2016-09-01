require 'player'

describe Player do

subject (:matt) {described_class.new("Matt")}
subject (:thao) {described_class.new("Thao")}

  it 'returns its name' do
    expect(matt.name).to eq "Matt"
  end

  it 'returns its hitpoint' do
    expect(matt.hitpoint).to eq 100
  end

  describe '#attack' do
    it 'damages player 2' do
      expect(thao).to receive(:receive_damage)
      matt.attack(thao)
    end
  end

  describe '#receive_damage' do
    it 'reduces the hitpoint by 10 following attack on player 2' do
      matt.attack(thao)
      expect(thao.hitpoint).to eq 90
    end
  end

end
