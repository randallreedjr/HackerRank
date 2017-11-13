require 'spec_helper'

describe Laptop do
  describe 'price' do
    it 'initializes with a price' do
      laptop = Laptop.new(price: 100)

      expect(laptop.price).to eq 100.0
    end
  end

  describe 'brand' do
    it 'initializes with a brand' do
      laptop = Laptop.new(brand: 'BestBook')

      expect(laptop.brand).to eq 'BestBook'
    end
  end

  describe 'lucky?' do
    it 'returns true when the number of 4\'s and 7\'s is the same' do
      laptop = Laptop.new(price: 7744)

      expect(laptop.lucky?).to be true
    end

    it 'returns false when the number of 4\'s and 7\'s is different' do
      laptop = Laptop.new(price: 1447)

      expect(laptop.lucky?).to be false
    end

    it 'returns false when there are no 4\'s or 7\'s' do
      laptop = Laptop.new(price: 121)

      expect(laptop.lucky?).to be false
    end
  end
end
