class RemComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :comments
  end
end
