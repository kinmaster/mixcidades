class CreateClassifields < ActiveRecord::Migration[5.1]
  def change
    create_table :classifields do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.float :value
      t.date :date
      t.boolean :sale

      t.timestamps
    end
  end
end
