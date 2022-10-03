# frozen_string_literal: true

class GetCategoriesEntrypoint
  API_ENDPOINT = 'https://www.themealdb.com/api/json/v1/1/categories.php'

  def self.call
    new.call
  end

  def call
    json_response['categories'].map do |category|
      CategoryMapper.map(category)
    end
  end

  private

  def make_request
    uri = URI(API_ENDPOINT)
    Net::HTTP.get_response(uri)
  end

  def json_response
    JSON.parse(make_request.response.body)
  end
end
