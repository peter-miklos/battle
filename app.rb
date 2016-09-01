require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    # @player_1 = $game.player1.name
    # @player_2 = $game.player2.name
    # $player1.attack($player2)
    $game.attack($game.player2)
    # @hitpoints2 = $game.player2.points
    erb :attack
  end

  run! if app_file == $0
end
