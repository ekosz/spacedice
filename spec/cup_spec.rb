require 'spec_helper'
require_relative '../lib/cup'

class MockDie; end

describe Cup do
  it "can give a random dice inside it" do
    die = MockDie.new
    cup = Cup.new([die])
    cup.take(1).should == [die]
  end

  it "can give all the dice inside it" do
    die1 = MockDie.new
    die2 = MockDie.new
    die3 = MockDie.new
    cup = Cup.new([die1, die2, die3])

    cup.take(3).should =~ [die1, die2, die3]
  end

  it "can give a subsection of the dice inside it" do
    die1 = MockDie.new
    die2 = MockDie.new
    die3 = MockDie.new
    cup = Cup.new([die1, die2, die3], proc { |dice| dice })

    cup.take(2).should == [die1, die2]
  end

  it "removes the dice from the cup" do
    die = MockDie.new
    cup = Cup.new([die])

    cup.take(1)
    cup.should be_empty
  end

  it "is not empty in the begining" do
    die = MockDie.new
    cup = Cup.new([die])

    cup.should_not be_empty
  end

  it "can have dice added to the cup" do
    die = MockDie.new
    cup = Cup.new([])

    cup.should be_empty
    cup.add(die)
    cup.should_not be_empty
  end
end
