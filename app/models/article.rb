# models/article.rb
class Article < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
end
