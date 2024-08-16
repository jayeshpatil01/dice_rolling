class DiceRoller
  attr_reader :dice_results

  def initialize(dice)
    @dice = dice
    @dice_results = []
  end

  def roll
    @dice_results = @dice.map do |sides|
      roll_die(sides)
    end
  end

  def total
    @dice_results.sum
  end

  def result
    {
      description: @dice.map { |sides| "#{sides}-sided die" }.join(", "),
      values: @dice_results,
      total: total
    }
  end

  private

  def roll_die(sides)
    rand(1..sides)
  end
end
