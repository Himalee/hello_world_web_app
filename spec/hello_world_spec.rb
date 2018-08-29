ENV['RACK_ENV'] = 'test'

require 'hello_world'
require 'test/unit'
require 'rack/test'

class HelloWorldTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_response_is_okay
    get '/'
    assert last_response.ok?
  end
end
