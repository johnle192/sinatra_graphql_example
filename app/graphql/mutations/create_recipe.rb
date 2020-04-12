require 'graphql'
require_relative 'base_mutation'
require './app/graphql/types/recipe'
require './app/graphql/types/inputs/create_recipe_input'

module Mutations
  class CreateRecipe < BaseMutation
    description 'Creates a recipe'
    argument :input, Types::Inputs::CreateRecipeInput, required: true
    field :recipe, Types::Recipe, null: true

    def resolve(input:)
      recipe = Recipe.create!(input.to_h)

      { recipe: recipe }
    end
  end
end
