class RenameSalaryToJob < ActiveRecord::Migration[5.1]
  def change
    rename_column :jobs, :salary, :salary_id
  end
end
