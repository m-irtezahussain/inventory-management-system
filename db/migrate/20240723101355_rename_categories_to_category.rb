class RenameCategoriesToCategory < ActiveRecord::Migration[7.1]
  def change
    rename_table :categories, :category
  end
end
