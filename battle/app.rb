require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

enable :sessions

  get '/play' do
    @game = $game
    erb :play
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.attacked_player)
    erb :attack
  end

  get '/switch_turns' do
    @game = $game
    @game.switch_turns
    redirect '/play'
  end

  run! if app_file == $0
end
