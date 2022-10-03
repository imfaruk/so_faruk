# frozen_string_literal: true

class RecipeMapper
  attr_reader :recipe

  def self.map(recipe)
    new(recipe).map
  end

  def map
    {
      id: recipe['idMeal'],
      name: recipe['strMeal'],
      thumbnail: recipe['strMealThumb'],
      drink_altenate: recipe['strDrinkAlternate'],
      category: recipe['strCategory'],
      area: recipe['strArea'],
      instructions: recipe['strInstructions'],
      tags: recipe['strTags'],
      youtube: recipe['strYoutube'],
      souce: recipe['strSouce'],
      image_sources: recipe['strImageSources'],
      creative_commmon_confirmed: recipe['strCreativeCommmonConfirmed'],
      modified_on: recipe['dateModified'],
      ingredients:
    }.compact
  end

  private

  def initialize(recipe)
    @recipe = recipe
  end

  def ingredients
    hash = {}
    i = 1
    loop do
      break unless recipe["strIngredient#{i}"].present?

      hash[recipe["strIngredient#{i}"]] = recipe["strMeasure#{i}"]
      i += 1
    end

    hash.present? ? hash : nil
  end
end
