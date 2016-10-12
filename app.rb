require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1_name = params[:Player1]
    @player_2_name = params[:Player2]
    erb(:play)
  end

  get '/play' do

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
