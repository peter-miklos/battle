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

get '/cat' do
  @random_name = ["Amigo","Oscar","Viking"].sample
  erb(:index)
end

set :session_secret, 'super secret'
