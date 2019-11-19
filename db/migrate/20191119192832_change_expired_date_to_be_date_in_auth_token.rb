class ChangeExpiredDateToBeDateInAuthToken < ActiveRecord::Migration[6.0]
  def up
    remove_column :auth_tokens, :expired_date
    add_column :auth_tokens, :expired_date, :date
  end
end
