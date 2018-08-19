class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :title
      t.text :description
      t.string :website
      t.string :author

      t.timestamps
    end
  end
end
