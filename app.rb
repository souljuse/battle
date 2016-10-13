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
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    # @game = Game.instance
    erb(:play)
  end

  get '/attack' do
    # @game = Game.instance
    @game.attack(@game.opponent)
    erb(:attack)
  end

  post '/switching_turns' do
    # @game = Game.instance
    @game.switch
    if @game.game_over?
      redirect '/game_over'
    else
      redirect '/play'
    end
  end

  get '/game_over' do
    # @game = Game.instance
    erb(:game_over)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
