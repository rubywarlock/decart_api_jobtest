require 'test_helper'

class CurrenciesTest < ActionDispatch::IntegrationTest

  test "Wrong Authorization" do
    authorization = authenticate_with_token("wrong_token")
    get "/currencies", headers: { "Authorization" => authorization }
    assert_equal 401, status
  end

  test "index" do
    authorization = authenticate_with_token("secret_test")
    get "/currencies", headers: { "Authorization" => authorization }
    assert_equal 200, status
  end

  test "show" do
    get "/currencies/1"
    assert_equal 200, status
  end

  test "show json response" do
    get "/currencies/1"
    body = JSON.parse(response.body)

    assert_match /\d/, body["id"].to_s
  end

  test "index json response" do
    authorization = authenticate_with_token("secret_test")
    get "/currencies", headers: { "Authorization" => authorization }
    assert_equal 200, status

    body = JSON.parse(response.body)

    assert_match /\d/, body[0]["id"].to_s
  end

  private

  def authenticate_with_token(token)
    ActionController::HttpAuthentication::Token.encode_credentials(token)
  end
end
