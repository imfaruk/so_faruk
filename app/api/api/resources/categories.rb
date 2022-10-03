# frozen_string_literal: true

module API
  module Resources
    class Categories < Grape::API
      resources :categories do
        desc 'Get Categories'
        get do
          categories = GetCategoriesEntrypoint.call

          categories = Kaminari.paginate_array(categories)
          paginate(categories)
        end

        desc 'List all recipes of a category'
        params do
          requires :name, type: String
        end

        get ':name/recipes' do
          recipes = GetCategoryRecipesEntrypoint.call(permitted_params[:name])
          recipes = Kaminari.paginate_array(recipes)
          present paginate(recipes)
        end
      end
    end
  end
end
