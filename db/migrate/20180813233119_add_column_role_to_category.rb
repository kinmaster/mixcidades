class AddColumnRoleToCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :role, :integer
  end
end
