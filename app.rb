require 'sinatra/base'

class Battle < Sinatra::Base
  get "/" do
    erb :index
    #"Testing infrastructure working!"
  end

  post "/names" do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end

  get "/Battle" do
    "Hello battle!"
  end

  run! if app_file == $0
end
