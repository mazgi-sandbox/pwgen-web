ENV['RACK_ENV'] = 'test'

require './app'
require 'test/unit'
require 'rack/test'
require 'turn'

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_says_cipher_table
    get '/cipher_table'
    assert last_response.ok?
  end
end
