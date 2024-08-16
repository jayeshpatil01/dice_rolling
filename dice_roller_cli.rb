require './dice_roller'

class DiceRollerCLI
  def initialize
    @dice = []
  end

  def run
    input_dice
    dice_roller = DiceRoller.new(@dice)
    dice_roller.roll
    display_result(dice_roller.result)
  end

  private

  def input_dice
    puts "Enter the number of dice to roll:"
    number_of_dice = gets.to_i
    number_of_dice.times do
      puts "Enter the number if sides for the die: "
      sides = gets.to_i
      @dice << sides
    end
  end

  def display_result(result)
    puts "\nRolling the dice..."
    result[:values].each_with_index do |value, index|
      puts "Die #{index +1} (#{result[:description].split(', ')[index]}): #{value}"
    end
    puts "Total: #{result[:total]}"
  end
end
