class AddColumCityToClassifields < ActiveRecord::Migration[5.1]
  def change
    add_reference :classifields, :city, foreign_key: true
    
  end
end
