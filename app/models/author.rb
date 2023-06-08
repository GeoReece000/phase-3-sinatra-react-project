class Author < ActiveRecord::Base
  has_many :articles

  validates :author_name, presence: true
  # validates :email, presence: true
end
