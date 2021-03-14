require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i ** 2
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @str = []
    #binding.pry
    @number.times do 
      @str << @phrase
    end
    "#{@str.join(", ")}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @res = ""
#binding.pry#
    case @operation
      when "add"
        @res = @number1 + @number2
      when "subtract"
        @res = @number1 - @number2
      when "multiply"
        @res = @number1 * @number2
      when "divide"
        @res = @number1 / @number2
    end
    "#{@res.to_s}"

  end

end