class AddColumnAvatarToContest < ActiveRecord::Migration[5.1]
  def change
    add_column :contests, :avatar, :string
  end
end
