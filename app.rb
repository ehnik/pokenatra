require 'sinatra'
require 'active_record'
require 'sinatra/reloader'

#connect to db

require_relative 'db/connection.rb'

# models

require_relative './Models/pokemon.rb'

get '/' do
  @pokemon = Pokemon.all
  erb :"index"
end

post '/' do
  Pokemon.create(name: params[:name], cp: params[:cp], poke_type: params[:poke_type], img_url: params[:img_url])
  redirect "/"
end

get '/new' do
  @pokemon = Pokemon.all
  erb :"new"
end

get '/update' do
  @pokemon = Pokemon.all
  erb :"update"
end

get '/:name' do
  @pokeName = params[:name]
  erb :"individUpdate"
end

post '/:name' do
  @pokemon_change = Pokemon.find_by(name: params[:to_update])
  @pokemon_change.update(name: params[:name])
  redirect "/:name"
end

get '/new' do
  @pokemon = Pokemon.all
  erb :"new"
end
