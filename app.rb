require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @squared_num = params[:number].to_i ** 2
    @squared_num.to_s
  end
end
