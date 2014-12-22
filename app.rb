#!/usr/bin/env ruby

class App < Sinatra::Base
  get '/' do
    ""
  end

  get '/cipher_table' do
    erb :cipher_table
  end
end

