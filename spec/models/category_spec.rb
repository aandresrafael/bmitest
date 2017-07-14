require 'rails_helper'

RSpec.describe Category, type: :model do
  describe '#get_category' do
    it 'should return category according the bmi' do
      category = Category.get_category(24)
      expect(category.first.description).to eq('Normal (healthy weight)')
    end

    context 'when bmi is zero' do
      it 'should return first category' do
        category = Category.get_category(0)
        expect(category.first.description).to eq('Very severely underweight')
      end
    end
  end
end
