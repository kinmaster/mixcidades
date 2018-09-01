class AddColumnSlugToContest < ActiveRecord::Migration[5.1]
  def change
    add_column :contests, :slug, :string
  end
end
