class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.date :date
      t.string :avatar

      t.timestamps
    end
  end
end
