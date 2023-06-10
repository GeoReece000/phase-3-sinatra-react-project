class CreateCommentTable < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |table|
      table.string :user_name
      table.string :comments
      table.integer :article_id
      table.timestamps
    end
  end
end
