class AddTokenToAuthToken < ActiveRecord::Migration[6.0]
  def change
    add_column :auth_tokens, :token, :string
  end
end
