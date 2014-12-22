require 'spec_helper'

RSpec.describe 'App' do
  def app
    @app ||= App
  end

  it "returns empty page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "returns cipher table" do
    get '/cipher_table'
    expect(last_response).to be_ok
  end
end

