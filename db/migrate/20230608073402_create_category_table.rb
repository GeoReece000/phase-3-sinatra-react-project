class CreateCategoryTable < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |table|
      table.string :category_name
    end
  end
end
