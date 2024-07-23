class AddAdminToCategoriesAndProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :categories, :admins, null: false, foreign_key: { to_table: :admins, on_delete: :cascade }
    add_reference :products, :admins, null: false, foreign_key:  { to_table: :admins, on_delete: :cascade }
  end
end
