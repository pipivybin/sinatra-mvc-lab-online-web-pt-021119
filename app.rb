require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @new = PigLatinizer.new(params[:user_phrase]).piglatinize
  end

end
