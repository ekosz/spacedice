require 'spec_helper'
require_relative '../lib/dice'

describe Dice do
  it "gives the same thing over and over, when there is only one option in the list" do
    die = Dice.new([1])
    die.roll.should == 1
  end

  it "it uses the random function to choice the face" do
    die = Dice.new([2,3], proc { |choices| choices[0] })
    die.roll.should == 2
  end
end
