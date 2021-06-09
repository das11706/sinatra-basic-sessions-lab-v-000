require_relative 'config/environment'

configure do
    enable :sessions
    set :session_secret, "secret"
end

class App < Sinatra::Base
    get '/' do
        erb :index
    end

    post '/checkout' do
        # binding.pry
        session[:item] = params[:item]
        @session = session
        erb :show
    end
end

# session = params[:cart]