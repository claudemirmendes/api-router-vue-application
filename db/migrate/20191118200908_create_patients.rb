class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :nome
      t.integer :user_id

      t.timestamps
    end
  end
end
