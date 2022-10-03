# frozen_string_literal: true

module API
  class Base < Grape::API
    include API::ExceptionHandling
    include Grape::Kaminari

    PAGINATION_MAX_PER_PAGE = 300
    PAGINATION_DEFAULT_PER_PAGE = 50

    version 'v1', using: :path
    format :json
    prefix :api

    #
    # Strong Parameters
    #
    helpers do
      def permitted_params
        @permitted_params ||= declared(params, include_missing: false)
      end
    end

    #
    # Pagination
    #
    before do
      # grape-kaminari will always return a page header of the given per_page param
      # and not the really used (and maybe enforced) value
      if params[:per_page] && params[:per_page].to_i > PAGINATION_MAX_PER_PAGE
        params[:per_page] = PAGINATION_MAX_PER_PAGE
      end

      # grape-kaminari will not return a header with the default value of 50 if there was no
      # per_page param
      params[:per_page] = PAGINATION_DEFAULT_PER_PAGE unless params[:per_page]
    end

    mount API::Resources::Categories
    mount API::Resources::Recipes
  end
end
