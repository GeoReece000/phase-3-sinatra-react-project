class AdmComments < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :comments,:text

  end
end
