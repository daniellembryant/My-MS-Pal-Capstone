class ArticlesController < ApplicationController

  def index
    response = HTTP.auth(Rails.application.credentials.articles_api_key).get("https://newsapi.org/v2/everything?q=multiple+sclerosis")
    articles = response.parse(:json)["articles"]
    render json: articles
  end

end
