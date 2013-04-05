class Cup
  def initialize(dice, shuffle = proc { |dice| dice.shuffle })
    @dice = dice
    @shuffle = shuffle
  end

  def take(amount)
    to_remove = shuffle.call(dice)[0...amount]
    @dice = dice - to_remove
    to_remove
  end

  def add(die)
    dice << die
  end

  def empty?
    dice.empty?
  end

  private

  attr_accessor :dice
  attr_reader   :shuffle
end
