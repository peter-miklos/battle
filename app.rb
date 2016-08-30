require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Stupid shotgun"
end

set :session_secret, 'super secret'
