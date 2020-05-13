# frozen_string_literal: true

require_relative '../citizen.rb'

describe Citizen do
  describe '#can_vote' do
    it 'if Citizen is greater than 18 should return true' do
      citizen = Citizen.new('Daniel', 'Polo', 26)
      expect(citizen.can_vote?).to eq(true)
    end

    it 'if Citizen is less than 18 should return true' do
      citizen = Citizen.new('Timi', 'TA', 16)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'should get full name when first and last name' do
      citizen = Citizen.new('Daniel', 'Polo', 26)
      expect(citizen.full_name).to eq('Daniel Polo')
    end
    it 'should get full name capitalized' do
      citizen = Citizen.new('daniel', 'polo', 26)
      expect(citizen.full_name).to eq('Daniel Polo')
    end
    it 'if Citizen doesnt have names, should return empty string' do
      citizen = Citizen.new(nil, nil, 16)
      expect(citizen.full_name).to eq('')
    end
  end
end
