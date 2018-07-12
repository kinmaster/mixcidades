class CreateEventAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :event_attachments do |t|
      t.references :event, foreign_key: true
      t.string :avatar

      t.timestamps
    end
  end
end
