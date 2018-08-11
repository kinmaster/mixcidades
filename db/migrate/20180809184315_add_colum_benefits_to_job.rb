class AddColumBenefitsToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :benefits, :text
    add_column :jobs, :requirements, :text
  end
end
