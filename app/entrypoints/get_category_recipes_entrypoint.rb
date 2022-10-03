# frozen_string_literal: true

class GetCategoryRecipesEntrypoint
  attr_reader :category_name

  API_ENDPOINT = 'https://www.themealdb.com/api/json/v1/1/filter.php'

  def self.call(category_name)
    new(category_name).call
  end

  def call
    json_response['meals'].map do |recipe|
      RecipeMapper.map(recipe)
    end
  end

  private

  def initialize(category_name)
    @category_name = category_name
  end

  def make_request
    uri = URI(API_ENDPOINT)
    uri.query = URI.encode_www_form(params)
    Net::HTTP.get_response(uri)
  end

  def params
    { c: category_name }
  end

  def json_response
    JSON.parse(make_request.response.body)
  end
end
