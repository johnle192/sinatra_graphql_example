require './app'
require 'multi_json'
require 'rack/parser'
use Rack::Parser, :content_types => {
  'application/json'  => Proc.new { |body| ::MultiJson.decode body }
}

run RecipeApp
