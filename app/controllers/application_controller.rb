class ApplicationController < Sinatra::Base
  configure do
    set :default_content_type, 'application/json'
  end

  get '/articles' do
    articles = Article.all
    articles.to_json
  end
