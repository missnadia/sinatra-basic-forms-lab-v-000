require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/create_puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]

    erb :create_puppy
  end
end
