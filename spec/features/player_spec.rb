require 'spec_helper'
require 'player'

describe Player do
  let(:player) { described_class.new('Pikachu') }
  let(:player2) { described_class.new('Raichu') }

  it 'returns its name' do
    expect(player.name).to eq('Pikachu')
  end

  describe '#hit_points' do
    it "shows the players' hit points" do
      expect(player.hit_points).to eq(described_class::HP)
    end
  end

  describe '#receive_damage' do
    it 'reduces HP by 10' do
      expect { player2.receive_damage }.to change { player2.hit_points }.by(-10)
    end
  end
end
