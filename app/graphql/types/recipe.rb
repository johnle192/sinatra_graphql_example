require 'graphql'
require_relative 'base_object'

module Types
  class Recipe < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :prep_time_minutes, Integer, null: true
    field :cook_time_minutes, Integer, null: true
  end
end
