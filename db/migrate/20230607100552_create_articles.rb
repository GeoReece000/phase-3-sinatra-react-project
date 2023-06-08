class CreateArticles < ActiveRecord::Migration[5.2]
  def change
        create_table :articles do |t|
          t.string :title
          t.text :content
          t.date :publication_date
          t.references :author, foreign_key: true
          t.references :category, foreign_key: true

          t.timestamps
        end
  end
end
