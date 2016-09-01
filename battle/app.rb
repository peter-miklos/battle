require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

enable :sessions

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hp = 100
    @player_2_hp = 100
    erb :play
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :attack
  end

  run! if app_file == $0
end
