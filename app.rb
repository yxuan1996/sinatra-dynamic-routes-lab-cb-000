require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @answer = @number*@number
    "#{@answer}"
  end

  get '/say/:number/:phrase' do
   final_string = ""
   (params[:number].to_i).times do
     final_string += "#{params[:phrase]}\n"
   end
   final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do

  end

end
