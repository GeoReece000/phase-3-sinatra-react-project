class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/articles' do
    articles = Article.all
    articles.to_json
  end

  get '/authors' do
    authors = Author.all
    authors.to_json
  end

  get '/categories' do
    categories = Category.all
    categories.to_json
  end

  post '/articles' do
    article = Article.new(params[:article])

    if article.save
      article.to_json
    else
      status 422
      { error: 'Unable to create article' }.to_json
    end
  end

  post '/authors' do
    author = Author.new(params[:author])

    if author.save
      author.to_json
    else
      status 422
      { error: 'Unable to create author' }.to_json
    end
  end

  post '/categories' do
    category = Category.new(params[:category])

    if category.save
      category.to_json
    else
      status 422
      { error: 'Unable to create category' }.to_json
    end
  end

  get '/articles/:id' do |id|
    article = Article.find(id)

    if article
      article.to_json
    else
      status 404
      { error: 'Article not found' }.to_json
    end
  end

  patch '/articles/:id' do |id|
    article = Article.find(id)

    if article
      if article.update(params[:article])
        article.to_json
      else
        { error: 'Unable to update article' }.to_json
      end
    else
      status 404
      { error: 'Article not found' }.to_json
    end
  end

  delete '/articles/:id' do |id|
    article = Article.find(id)

    if article
      article.destroy
      { message: 'Article deleted' }.to_json
    else
      status 404
      { error: 'Article not found' }.to_json
    end
  end
end
