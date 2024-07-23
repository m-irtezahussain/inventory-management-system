class AddCategoryToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :category, null: false, foreign_key: {to_table: :category, on_delete: :cascade}
  end
end
