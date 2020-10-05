require_relative 'config/environment'
# require_relative '/puppy.rb'

class App < Sinatra::Base

  post '/puppy' do 
    puppy = params["puppy"]
    @new_puppy = Puppy.new(puppy["name"], puppy["breed"], puppy["age"])
    erb :puppy
  end 

  get '/new' do 
    erb :new
  end 

  get '/' do 
    erb :hello
  end 

end
