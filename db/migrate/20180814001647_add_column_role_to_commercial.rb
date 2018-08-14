class AddColumnRoleToCommercial < ActiveRecord::Migration[5.1]
  def change
    add_column :commercials, :role, :integer
  end
end
