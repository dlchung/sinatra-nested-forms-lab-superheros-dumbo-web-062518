require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      # binding.pry
      @name = params["team"]["name"]
      @motto = params["team"]["motto"]
      @hero_array = params["team"]["hero"]
      
      erb :team
    end


end
