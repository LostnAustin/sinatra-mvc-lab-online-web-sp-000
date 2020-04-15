require 'pry'
require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

post '/piglatinize' do
   @a = params[:user_phrase]

    @pl_instance  = PigLatinizer.new
      #  binding.pry
    @pl = @pl_instance.piglatinize(@a)
  erb :user_input
end

# get '/piglatinize' do
#    @a = params[:user_phrase]
#     #  binding.pry
#    @p = PigLatinizer.new(a)
#
#    erb :piglatinize
# end



end
