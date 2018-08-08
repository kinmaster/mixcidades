class RemoveDateFromClassifield < ActiveRecord::Migration[5.1]
  def change
    remove_column :classifields, :date, :date
  end
end
