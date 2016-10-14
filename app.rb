require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  before '/*' do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    player_2.name == "" ? player_2 = Player.new('Computer') : player_2
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.opponent)
    erb(:attack)
  end

  post '/switching_turns' do
    @game.switch
    if @game.game_over?
      redirect '/game_over'
    elsif @game.player_2.name == 'Computer'
      @game.attack(@game.opponent)
      @game.switch
    end
    redirect '/play'
  end

  get '/game_over' do
    erb(:game_over)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
