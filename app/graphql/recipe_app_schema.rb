require 'graphql'
require_relative 'types/root/query_type'
require_relative 'types/root/mutation_type'

class RecipeAppSchema < GraphQL::Schema
  query QueryType
  mutation MutationType
end
