require 'graphql'
require_relative 'base_input_object'

module Types
  module Inputs
    class CreateRecipeInput < BaseInputObject
      description "Attributes for creating a recipe"
      argument :name, String, required: true
      argument :description, String, required: false
      argument :prep_time_minutes, Integer, required: true
      argument :cook_time_minutes, Integer, required: true
    end
  end
end
