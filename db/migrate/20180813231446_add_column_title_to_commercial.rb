class AddColumnTitleToCommercial < ActiveRecord::Migration[5.1]
  def change
    add_column :commercials, :title, :string
  end
end
