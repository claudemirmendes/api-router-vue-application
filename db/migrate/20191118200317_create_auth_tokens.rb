class CreateAuthTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :auth_tokens do |t|
      t.integer :expired_date
      t.integer :user_id

      t.timestamps
    end
  end
end
