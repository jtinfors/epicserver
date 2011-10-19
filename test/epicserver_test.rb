%w[lobster test/unit rack/test].each { |x| require x }

class EpicserverTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Rack::Lobster.new
  end

  def test_everything_is_ok
    get "/"
    assert_equal "http://example.org/", last_request.url
    assert last_response.ok?
  end
end
