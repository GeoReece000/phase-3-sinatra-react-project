require 'sinatra'
require 'json'
require_relative 'controllers/article_controller'
require_relative 'controllers/categories_controller'


# Set the desired port
set :port, 9292

# Database configuration
set :database, { adapter: 'sqlite3', database: 'development.sqlite3' }

# Model files
Dir["./app/models/*.rb"].each { |file| require file }

# Define your routes

get '/articles' do
  ArticleController.get_all_articles
end

get '/articles/:id' do
  ArticleController.get_article(params[:id])
end

post '/articles' do
  ArticleController.create_article(JSON.parse(request.body.read))
end

put '/articles/:id' do
  ArticleController.update_article(params[:id], JSON.parse(request.body.read))
end

delete '/articles/:id' do
  ArticleController.delete_article(params[:id])
end


