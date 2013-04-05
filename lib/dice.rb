class Dice
  def initialize(choices, random_fuction = proc { |choices| choices.sample })
    @choices = choices
    @rand = random_fuction
  end

  def roll
    @rand.call(@choices)
  end
end
