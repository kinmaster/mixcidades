class CreateImagems < ActiveRecord::Migration[5.1]
  def change
    create_table :imagems do |t|
      t.string :avatar

      t.timestamps
    end
  end
end
