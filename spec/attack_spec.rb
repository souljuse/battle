require 'attack'

describe Attack do

  let(:luigi) { double :player, hit_points: 50}
  let(:game) { double :game }

  describe "#poison" do
    it 'should attack with a small chance of poisoning the opponent' do
      poison(luigi)
      allow(luigi).to receive(:is_poisoned?).and_return(true)
      expect(luigi.hit_points).to eq (46)
    end
  end

end
