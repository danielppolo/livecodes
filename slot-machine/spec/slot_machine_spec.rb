# frozen_string_literal: true

require_relative '../slot_machine.rb'

describe SlotMachine do
  describe '#score' do
    it 'should return 50 when 3 jokers' do
      machine = SlotMachine.new
      score = machine.score(%w[joker joker joker])
      expect(score).to eq(50)
    end

    it 'should return 40 when 3 stars' do
      machine = SlotMachine.new
      score = machine.score(%w[star star star])
      expect(score).to eq(40)
    end

    it 'should return 30 when 3 bells' do
      machine = SlotMachine.new
      score = machine.score(%w[bell bell bell])
      expect(score).to eq(30)
    end

    it 'should return 20 when 3 sevens' do
      machine = SlotMachine.new
      score = machine.score(%w[seven seven seven])
      expect(score).to eq(20)
    end

    it 'should return 10 when 3 cherries' do
      machine = SlotMachine.new
      score = machine.score(%w[cherry cherry cherry])
      expect(score).to eq(10)
    end

    # 2 of the same
    it 'should return 25 when 2 joker + any' do
      machine = SlotMachine.new
      score = machine.score(%w[joker joker cherry])
      expect(score).to eq(25)
    end

    it 'should return 20 when 2 stars + joker' do
      machine = SlotMachine.new
      score = machine.score(%w[star star joker])
      expect(score).to eq(20)
    end

    it 'should return 15 when 2 bells + joker' do
      machine = SlotMachine.new
      score = machine.score(%w[bell bell joker])
      expect(score).to eq(15)
    end

    it 'should return 10 when 2 sevens + joker' do
      machine = SlotMachine.new
      score = machine.score(%w[seven seven joker])
      expect(score).to eq(10)
    end

    it 'should return 5 when 2 cherries + joker' do
      machine = SlotMachine.new
      score = machine.score(%w[cherry cherry joker])
      expect(score).to eq(5)
    end

    it 'should return 25 when 2 cherries + joker in different order' do
      machine = SlotMachine.new
      score = machine.score(%w[joker cherry cherry])
      expect(score).to eq(5)
    end

    # NONE OF WINNER OPTIONS
    it 'should return 0 when the 3 are different' do
      machine = SlotMachine.new
      score = machine.score(%w[cherry seven joker])
      expect(score).to eq(0)
    end
  end
end
