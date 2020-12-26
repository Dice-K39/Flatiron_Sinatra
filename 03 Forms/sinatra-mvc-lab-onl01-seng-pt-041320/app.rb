require_relative 'config/environment'
require "pry"
class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post "/piglatinize" do
        user_input = params[:user_phrase]
        piglatinized = PigLatinizer.new

        @piglatinized_phrase = piglatinized.piglatinize(user_input)

        erb :output
    end
end