require 'rspec'
require_relative 'dice_roller'

RSpec.describe DiceRoller do
  describe '#roll' do
    it 'generates a result for each die' do
      dice_roller = DiceRoller.new([6, 8])
      dice_roller.roll
      expect(dice_roller.dice_results.size).to eq(2)
    end

    it 'returns values within the exepcted range for each die' do
      dice_roller = DiceRoller.new([6, 8])
      dice_roller.roll
      expect(dice_roller.dice_results[0]).to be_between(1, 6)
      expect(dice_roller.dice_results[1]).to be_between(1, 8)
    end
  end

  describe '#total' do
    it 'calculates the total of all dice rolls' do
      dice_roller = DiceRoller.new([6, 8])
      dice_roller.roll
      total = dice_roller.dice_results.sum
      expect(dice_roller.total).to eq(total)
    end
  end

  describe '#result' do
    it 'returns a hash with the correct keys' do
      dice_roller = DiceRoller.new([6, 8])
      dice_roller.roll
      result = dice_roller.result
      expect(result).to have_key(:description)
      expect(result).to have_key(:values)
      expect(result).to have_key(:total)
    end

    it 'describes the rolled dice accurately' do
      dice_roller = DiceRoller.new([6, 8])
      dice_roller.roll
      result = dice_roller.result
      expect(result[:description]).to eq("6-sided die, 8-sided die")
    end
  end
end
