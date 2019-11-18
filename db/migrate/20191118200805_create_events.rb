class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :date
      t.string :init_hour
      t.string :end_hour
      t.string :payment_type
      t.string :patient_id

      t.timestamps
    end
  end
end
