require_relative 'config/environment'
require "pry"
class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"

  end

  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    string_array = []

    @number.to_i.times do
      string_array << @phrase
    end

    "#{string_array}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    array = [@word1, @word2, @word3, @word4, @word5]

    "#{array.join(" ")}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = 0

    case @operation
    when "add"
      @result = @num1 + @num2
    when "subtract"
      @result = @num1 - @num2
    when "multiply"
      @result = @num1 * @num2
    when "divide"
      @result = @num1 / @num2
    end

    "#{@result}"
  end
end