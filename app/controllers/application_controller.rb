class ApplicationController < Sinatra::Base
  configure do
    set :default_content_type, 'application/json'
  end

  get '/articles' do
    articles = Article.all
    articles.to_json
  end

  post '/articles' do
    article = Article.new(article_params)

    if article.save
      status 201
      article.to_json
    else
      status 422
      { error: 'Unable to create article' }.to_json
    end
  end
