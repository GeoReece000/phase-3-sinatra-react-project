class CreateAuthorsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |table|
      table.string :author_name
      table.string :writing_category
    end
  end
end
