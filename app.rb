require 'sinatra'
require 'sinatra/activerecord'
require "sinatra/contrib"
require './app/graphql/recipe_app_schema'

Dir["./app/models/*.rb"].each { |file| require file }

set :database, "sqlite3:recipe-app.sqlite3"

class RecipeApp < Sinatra::Base
  get '/' do
    'It Works!'
  end

  get '/ping' do
    json message: 'pong'
  end

  post '/graphql' do
    result = RecipeAppSchema.execute(
      @params[:query],
      variables: @params[:variables],
      context: { current_user: nil },
    )
    json result
  end

  post '/example' do
    json result: @params[:result]
  end
end
