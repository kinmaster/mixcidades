class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.references :user, foreign_key: true
      t.references :sector, foreign_key: true
      t.references :capacity, foreign_key: true
      t.string :title
      t.text :description
      t.string :phone
      t.string :email
      t.float :salary
      t.date :date

      t.timestamps
    end
  end
end
