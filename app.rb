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
  "<div style='border: 3px dashed red; width: 454px'>
  <img src='http://bit.ly/1eze8aE'>
  </div>"
end

set :session_secret, 'super secret'
