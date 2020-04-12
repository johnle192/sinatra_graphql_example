require 'graphql'

Dir["./app/graphql/types/*rb"].each { |file| require file }
Dir["./app/models/*rb"].each { |file| require file }


class QueryType < GraphQL::Schema::Object
  description "The query root of this schema"

  field :recipes, [::Types::Recipe], null: false do
    description 'Get all recipes'
  end

  def recipes
    ::Recipe.all
  end
end
