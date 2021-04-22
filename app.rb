require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end

  get "/square/:number" do
    @square = params[:number].to_i ** 2
    @square.to_s
  end

  get "/say/:number/:phrase" do
    @quantity = params[:number].to_i
    "#{params[:phrase]}\n" * @quantity
    # (params[:number].to_i).times("#{params[:phrase]}\n")
   
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation].to_s
    @result = 0
    if @operation == "add"
      @result = @num1 + @num2
    elsif @operation == "subtract"
      @result = @num1 - @num2
    elsif @operation == "multiply"
      @result = @num1 * @num2
    elsif @operation == "divide"
      @result = @num1 / @num2
    end
    @result.to_s
  end


end