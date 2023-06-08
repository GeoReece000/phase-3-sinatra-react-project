class Category < ActiveRecord::Base
  has_many :articles

  validates :category_name, presence: true
end
