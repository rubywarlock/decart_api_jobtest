class CurrenciesController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods

  TOKEN = "secret_test"

  before_action :set_currency, only: [:show]
  before_action :authenticate, except: [:show]

  # GET /currencies
  def index
    @currencies = Currency.all

    render json: @currencies
  end

  # GET /currencies/1
  def show
    render json: @currency
  end

  private
    def set_currency
      @currency = Currency.find(params[:id])
    end

    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        ActiveSupport::SecurityUtils.secure_compare(TOKEN, token)
      end
    end
end
