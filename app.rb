require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Shhhhhhh"
end

get '/dog' do
  "woof"
end

get '/random-cat' do
  @name = ["Amigo","Oscar","Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

set :session_secret, 'super secret'
