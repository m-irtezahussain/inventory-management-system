class RenameAdminsIdToAdminId < ActiveRecord::Migration[7.1]
  def change
    rename_column :category, :admins_id, :admin_id
  end
end
