require 'test_helper'

class CurrenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @currency = currencies(:one)
  end

  test "should get index" do
    get currencies_url, as: :json
    assert_response :success
  end

  test "should show currency" do
    get currency_url(@currency), as: :json
    assert_response :success
  end
end
