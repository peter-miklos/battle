require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

enable :sessions

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @player_1_hp = $player_1.hitpoint
    @player_2_hp = $player_2.hitpoint
    erb :play
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    Game.new.attack($player_2)
    erb :attack
  end

  run! if app_file == $0
end
