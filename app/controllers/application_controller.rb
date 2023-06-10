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

  get '/articles/:id' do |id|
    article = find_article(id)

    if article
      article.to_json
    else
      status 404
      { error: 'Article not found' }.to_json
    end
  end

  patch '/articles/:id' do |id|
    article = find_article(id)

    if article
      if article.update(article_params)
        article.to_json
      else
        status 422
        { error: 'Unable to update article' }.to_json
      end
    else
      status 404
      { error: 'Article not found' }.to_json
    end
  end

  delete '/articles/:id' do |id|
    article = find_article(id)

    if article
      article.destroy
      { message: 'Article deleted' }.to_json
    else
      status 404
      { error: 'Article not found' }.to_json
    end
  end

  private

  def article_params
    params[:article].slice(:title, :content, :category_id)
  end

  def find_article(id)
    Article.find_by(id: id)
  end

    # Get all categories
  get '/categories' do
    categories = Category.all
    categories.to_json
  end

  # Get a specific category
  get '/categories/:id' do |id|
    category = Category.find_by(id: id)

    if category
      category.to_json
    else
      status 404
      { error: 'Category not found' }.to_json
    end
  end

  # Create a category
  post '/categories' do
    category = Category.new(category_params)

    if category.save
      status 201
      category.to_json
    else
      status 422
      { error: 'Unable to create category' }.to_json
    end
  end

  # Update a category
  patch '/categories/:id' do |id|
    category = Category.find_by(id: id)

    if category
      if category.update(category_params)
        category.to_json
      else
        status 422
        { error: 'Unable to update category' }.to_json
      end
    else
      status 404
      { error: 'Category not found' }.to_json
    end
  end

  # Delete a category
  delete '/categories/:id' do |id|
    category = Category.find_by(id: id)

    if category
      category.destroy
      { message: 'Category deleted' }.to_json
    else
      status 404
      { error: 'Category not found' }.to_json
    end
  end

  private

  def category_params
    params[:category].slice(:name)
  end

end
