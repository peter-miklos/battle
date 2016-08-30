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
  erb(:index)
end

set :session_secret, 'super secret'
