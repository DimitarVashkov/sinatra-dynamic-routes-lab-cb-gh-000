require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.split('').reverse.join('')
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
  end
  

end
