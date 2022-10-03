# frozen_string_literal: true

class CategoryMapper
  attr_reader :category

  def self.map(category)
    new(category).map
  end

  def map
    {
      id: category['idCategory'],
      name: category['strCategory'],
      thumbnail: category['strCategoryThumb'],
      description: category['strCategoryDescription']
    }.compact
  end

  private

  def initialize(category)
    @category = category
  end
end
