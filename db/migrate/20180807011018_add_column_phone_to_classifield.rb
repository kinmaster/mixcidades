class AddColumnPhoneToClassifield < ActiveRecord::Migration[5.1]
  def change
    add_column :classifields, :phone, :string
  end
end
