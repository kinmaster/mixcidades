class RemoveColumCityToUser < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :users, :city
  end
end
