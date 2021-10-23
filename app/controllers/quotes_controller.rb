class QuotesController < ApplicationController

  def index
    response = HTTP.get("https://api.quotable.io/random")
    quotes = response.parse(:json)
    render json: quotes
  end
  
end
