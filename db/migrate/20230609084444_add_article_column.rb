class AddArticleColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :article, :string
  end
end

