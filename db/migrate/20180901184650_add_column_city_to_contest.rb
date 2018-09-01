class AddColumnCityToContest < ActiveRecord::Migration[5.1]
  def change
    add_reference :contests, :city, foreign_key: true
  end
end
