class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  # Add your routes here
  get '/articles' do
    article=Article.all
   article.to_json
  end

  get '/authors' do
    author=Author.all
    author.to_json

  end

  get '/category' do
    category=Category.all
    category.to_json
  end

  post '/articles' do
      # Assuming you have an Article model defined
    @article = Article.new(params)

    if @article.save
      # Article saved successfully
      @article.to_json
    else
      # There was an error saving the article
      { error: 'Unable to create article' }
    end
  end

  get '/articles/:id' do |id|
    @article = Article.find(id)

    if @article
      @article.to_json
    else
      status 404
      { error: 'Article not found' }.to_json
    end
  end

  patch '/articles/:id' do |id|
    @article = Article.find(id)

    if @article
      if @article.update(params)
        @article.to_json
      else
        { error: 'Unable to update article' }.to_json
      end
    else
      status 404
      { error: 'Article not found' }.to_json
    end
  end

  delete '/articles/:id' do |id|
    @article = Article.find(id)

    if @article
      @article.destroy
      { message: 'Article deleted' }.to_json
    else
      status 404
      { error: 'Article not found' }.to_json
    end
  end
end
