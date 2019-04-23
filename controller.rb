require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rps_model.rb')

also_reload('./models/*')




get '/add/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  @calculation = "#{Calculator.add(num1, num2)}"
  erb( :result )
end
