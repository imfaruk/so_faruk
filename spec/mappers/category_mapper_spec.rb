# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CategoryMapper do
  subject { described_class.new(category) }

  let(:category) do
    {
      'idCategory' => '14',
      'strCategory' => 'Goat',
      'strCategoryThumb' => 'https://www.themealdb.com/images/category/goat.png',
      'strCategoryDescription' => 'Category description.'
    }
  end

  let(:mapped_category) do
    {
      description: 'Category description.',
      id: '14',
      name: 'Goat',
      thumbnail: 'https://www.themealdb.com/images/category/goat.png'
    }
  end

  describe '#map' do
    it 'maps category to desired format' do
      expect(subject.map).to eq(mapped_category)
    end
  end
end
