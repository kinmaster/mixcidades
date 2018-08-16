class AddColumnSlugToClassifield < ActiveRecord::Migration[5.1]
  def change
    add_column :classifields, :slug, :string
    add_index :classifields, :slug, unique: true
  end
end
