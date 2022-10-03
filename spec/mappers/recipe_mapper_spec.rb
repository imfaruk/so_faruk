# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RecipeMapper do
  subject { described_class.new(recipe) }

  let(:recipe) do
    { 'idMeal' => '53050',
      'strMeal' => 'Ayam Percik',
      'strDrinkAlternate' => nil,
      'strCategory' => 'Chicken',
      'strArea' => 'Malaysian',
      'strInstructions' => 'Instruction',
      'strMealThumb' =>
       'https://www.themealdb.com/images/media/meals/020z181619788503.jpg',
      'strTags' => nil,
      'strYoutube' => 'https://www.youtube.com/watch?v=9ytR28QK6I8',
      'strIngredient1' => 'Chicken Thighs',
      'strIngredient2' => 'Challots',
      'strIngredient3' => 'Ginger',
      'strIngredient4' => 'Garlic Clove',
      'strIngredient5' => 'Cayenne Pepper',
      'strIngredient6' => 'Turmeric',
      'strIngredient7' => 'Cumin',
      'strIngredient8' => 'Coriander',
      'strIngredient9' => 'Fennel',
      'strIngredient10' => 'Tamarind Paste',
      'strIngredient11' => 'Coconut Milk',
      'strIngredient12' => 'Sugar',
      'strIngredient13' => 'Water',
      'strIngredient14' => '',
      'strIngredient15' => '',
      'strIngredient16' => '',
      'strIngredient17' => '',
      'strIngredient18' => '',
      'strIngredient19' => '',
      'strIngredient20' => '',
      'strMeasure1' => '6',
      'strMeasure2' => '16',
      'strMeasure3' => '1 1/2 ',
      'strMeasure4' => '6',
      'strMeasure5' => '8',
      'strMeasure6' => '2 tbs',
      'strMeasure7' => '1 1/2 ',
      'strMeasure8' => '1 1/2 ',
      'strMeasure9' => '1 1/2 ',
      'strMeasure10' => '2 tbs',
      'strMeasure11' => '1 can ',
      'strMeasure12' => '1 tsp ',
      'strMeasure13' => '1 cup ',
      'strMeasure14' => ' ',
      'strMeasure15' => ' ',
      'strMeasure16' => ' ',
      'strMeasure17' => ' ',
      'strMeasure18' => ' ',
      'strMeasure19' => ' ',
      'strMeasure20' => ' ',
      'strSource' => 'http://www.curiousnut.com/roasted-spiced-chicken-ayam-percik/',
      'strImageSource' => nil,
      'strCreativeCommonsConfirmed' => nil,
      'dateModified' => nil }
  end

  let(:mapped_recipe) do
    { id: '53050',
      name: 'Ayam Percik',
      thumbnail: 'https://www.themealdb.com/images/media/meals/020z181619788503.jpg',
      category: 'Chicken',
      area: 'Malaysian',
      instructions: 'Instruction',
      youtube: 'https://www.youtube.com/watch?v=9ytR28QK6I8',
      ingredients: { 'Chicken Thighs' => '6',
                     'Challots' => '16',
                     'Ginger' => '1 1/2 ',
                     'Garlic Clove' => '6',
                     'Cayenne Pepper' => '8',
                     'Turmeric' => '2 tbs',
                     'Cumin' => '1 1/2 ',
                     'Coriander' => '1 1/2 ',
                     'Fennel' => '1 1/2 ',
                     'Tamarind Paste' => '2 tbs',
                     'Coconut Milk' => '1 can ',
                     'Sugar' => '1 tsp ',
                     'Water' => '1 cup ' } }
  end

  describe '#map' do
    it 'maps recipe to desired format' do
      expect(subject.map).to eq(mapped_recipe)
    end
  end
end
