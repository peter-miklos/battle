require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    $game = Game.new
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player1.name
    @player_2 = $player2.name
    @hitpoints1 = $player1.points
    @hitpoints2 = $player2.points
    erb :play
  end

  get '/attack' do
    @player_1 = $player1.name
    @player_2 = $player2.name
    # $player1.attack($player2)
    $game.attack($player2)
    @hitpoints2 = $player2.points
    erb :attack
  end

  run! if app_file == $0
end
