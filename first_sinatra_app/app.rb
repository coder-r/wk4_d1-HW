require 'sinatra'
require 'sinatra/contrib/all' if development?

get '/hi' do
  puts "Hello world"
end

get '/roll-die' do
  return "Rolling the die...#{rand(1..7)}"
end

get '/name/:first/:last' do
  return "your name is #{params[:first]} #{params[:last]}"
end

get '/friends/:number' do
  friends = ["Joey", "Phoebe", "Monica", "Chandler", "Rachel", "Ross"]
  index = params["number"].to_i -1
  return friends [index]
end

get '/square/:num' do
  num = params[:num].to_i
  return "Number squared is = #{num * num}"
end

#will run the one below beofre anything else

get '/pet/:hello' do
  return "Hello pet"

get '/pet/:hello' do
  return "Hello #{params[:name]}"
end
