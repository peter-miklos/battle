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
  '<div>
  <img src="http://bit.ly/1eze8aE" alt="cat">
  </div>'
end

set :session_secret, 'super secret'
