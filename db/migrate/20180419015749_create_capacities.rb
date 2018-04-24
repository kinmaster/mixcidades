class CreateCapacities < ActiveRecord::Migration[5.1]
  def change
    create_table :capacities do |t|
      t.references :user, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
