class CreateCommercials < ActiveRecord::Migration[5.1]
  def change
    create_table :commercials do |t|
      t.references :user, foreign_key: true
      t.string :address
      t.string :avatar
      t.references :city, foreign_key: true
      t.string :phone
      t.references :category, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
