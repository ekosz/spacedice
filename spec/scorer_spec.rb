require_relative '../lib/scorer'

describe Scorer do
  it "scores 4 planets as 0" do
    Scorer.score([:p, :p, :p, :p]).should == 0
  end

  it 'scores 3 planets and a sun as 3' do
    Scorer.score([:p, :p, :p, :s]).should == 3
  end

  it 'counts the amount of black holes' do
    Scorer.blackholes([:b, :b, :s, :p]).should == 2
  end
end
