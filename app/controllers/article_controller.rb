# controllers/article_controller.rb

# require_relative '../models/article'

class ArticleController
  def self.get_all_articles
    articles = Article.all
    # Convert the array of Article objects to JSON and return it
  end

  def self.get_article(id)
    article = Article.find(id)
    # Convert the Article object to JSON and return it
  end

  def self.create_article(data)
    article = Article.new(data['id'], data['title'], data['content'], data['author'])
    article.save
    # Return a success message or the created Article object as JSON
  end

  def self.update_article(id, data)
    article = Article.find(id)
    article.update(data)
    # Return a success message or the updated Article object as JSON
  end

  def self.delete_article(id)
    article = Article.find(id)
    article.delete
    # Return a success message
  end
end
