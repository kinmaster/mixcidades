class AddColumnSlugToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :slug, :string
    add_reference :jobs, :city, foreign_key: true
  end
end
