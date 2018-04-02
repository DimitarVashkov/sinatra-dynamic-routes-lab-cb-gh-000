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
    @phrase * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    result = 0
    case @op
    when 'add'
      result = @n1 + @n2
    when 'subtract'
      result = @n1 - @n2
    when 'multiply'
      result = @n1 * @n2
    when 'divide'
      result = @n1 / @n2
    end
    puts @n1
    puts @n2
    puts result
    result
  end



end
