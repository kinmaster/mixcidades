class CreateSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :sectors do |t|
      t.references :user, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
