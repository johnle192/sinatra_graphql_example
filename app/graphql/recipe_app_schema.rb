require 'graphql'
require_relative 'types/root/query_type.rb'

class RecipeAppSchema < GraphQL::Schema
  query QueryType
end
