class CreateArticlesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |table|
      table.string :author_name
      table.string :comments
      table.integer :views
      table.references :author, foreign_key: true
      table.references :category, foreign_key: true

      table.timestamps
    end
  end
end
