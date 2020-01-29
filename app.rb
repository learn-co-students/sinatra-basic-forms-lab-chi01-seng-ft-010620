require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do      #welcome page and creat puppy link
        erb :index
    end

    get '/new' do  #directed here by index page , a form for creating new
        erb :create_puppy
    end

    post '/puppy' do #directed here by create_puppy,displays new pup
     @puppy = Puppy.new(params[:name],params[:breed],params[:age])
     erb :display_puppy     
    end
end
