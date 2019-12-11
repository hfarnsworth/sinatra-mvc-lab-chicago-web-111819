require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        phrase = params[:user_phrase]
        text = PigLatinizer.new
        @phrase = text.piglatinize(phrase)
        erb :piglatinize
    end

    

end