class Scorer
  SUN = :s
  PLANET = :p
  BLACKHOLE = :b

  def self.score(dice)
    return 0 unless dice.include?(SUN)

    dice.reduce(0) do |sum, die|
      die == PLANET ? sum + 1 : sum
    end
  end

  def self.blackholes(dice)
    dice.reduce(0) do |sum, die|
      die == BLACKHOLE ? sum + 1 : sum
    end
  end
end
