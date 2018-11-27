require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    subject {
      described_class.new(name: "Pet Rock", quantity: 1000000, category: Category.new(name: "Luxury Items"))
    }

    it 'is valid with attributes name, price, quantity, and category' do
      subject.price = 987.94
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.price = 987.94
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a price' do
      expect(subject).to_not be_valid
    end

    it 'is not valid without a quantity' do
      subject.price = 987.94
      subject.quantity = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a category' do
      subject.price = 987.94    
      subject.category = nil
      expect(subject).to_not be_valid
    end

  end
end