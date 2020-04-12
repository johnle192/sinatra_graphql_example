require 'graphql'
Dir["./app/graphql/mutations/*.rb"].each { |file| require file }

class MutationType < GraphQL::Schema::Object
  description "The mutation root of this schema"

  field :create_recipe, mutation: Mutations::CreateRecipe
end
