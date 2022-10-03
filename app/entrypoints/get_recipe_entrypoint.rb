# frozen_string_literal: true

class GetRecipeEntrypoint
  attr_reader :id

  API_ENDPOINT = 'https://www.themealdb.com/api/json/v1/1/lookup.php'

  def self.call(id)
    new(id).call
  end

  def call
    RecipeMapper.map(json_response['meals'].first)
  end

  private

  def initialize(id)
    @id = id
  end

  def make_request
    uri = URI(API_ENDPOINT)
    uri.query = URI.encode_www_form(params)
    Net::HTTP.get_response(uri)
  end

  def params
    { i: id }
  end

  def json_response
    JSON.parse(make_request.response.body)
  end
end
