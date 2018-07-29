class AddColumAvatarToClassifield < ActiveRecord::Migration[5.1]
  def change
    add_column :classifields, :avatar, :string
  end
end
