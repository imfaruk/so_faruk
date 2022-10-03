# frozen_string_literal: true

module API
  module Resources
    class Recipes < Grape::API
      resources :recipes do
        route_param :id do
          desc 'Get Recipe'
          params do
            requires :id, type: Integer
          end

          get do
            GetRecipeEntrypoint.call(permitted_params[:id])
          end
        end
      end
    end
  end
end
