require 'sinatra'
require 'json'
require 'pry'
require 'pry-byebug'
require 'sinatra/reloader'
require 'sinatra/cross_origin'

enable :cross_origin

set :bind, '0.0.0.0'

get '/hello' do
  #'hello'
  # hoge.erbを描画するときは
  erb :hoge
end

get '/json' do
  cross_origin
  data = {
    board: [
      ['black', 'black', 'black'], 
      ['black', 'black', 'black'], 
      ['black', 'black', 'black']
    ]
  }
  JSON.generate(data)
end


