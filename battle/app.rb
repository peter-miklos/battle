require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

enable :sessions

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/attack' do
    @game.attack(@game.attacked_player)
    erb :attack
  end

  get '/switch_turns' do
    @game.switch_turns
    redirect '/play'
  end

  run! if app_file == $0
end
