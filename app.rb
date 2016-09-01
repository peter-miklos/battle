require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # session["player_1_name"] = params[:player_1_name]
    # session["player_2_name"] = params[:player_2_name]
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player1.name
    @player_2 = $player2.name
    erb :play
  end

  get '/attack' do
    @player_1 = $player1.name
    @player_2 = $player2.name
    erb :attack
  end

  run! if app_file == $0
end
