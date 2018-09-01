class CreateContests < ActiveRecord::Migration[5.1]
  def change
    create_table :contests do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :sub
      t.date :date
      t.text :body
      t.integer :role

      t.timestamps
    end
  end
end
