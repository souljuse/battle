require 'sinatra/base'

class Battle < Sinatra::Base
  use Rack::Session::Cookie,  :key => 'rack.session',
                              :path => '/',
                              :secret => 'your_secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:Player1]
    session[:player_2_name] = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]

    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
