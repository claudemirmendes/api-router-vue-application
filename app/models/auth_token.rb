# frozen_string_literal: true

class AuthToken < ApplicationRecord
  def self.generate_token(user)
    auth_token = AuthToken.where(user_id: user.id)
    if auth_token.empty?
      hash_token = SecureRandom.uuid
      date = DateTime.now + 1.year
      auth_token = AuthToken.create(token: hash_token, user_id: user.id, expired_date: date)
      return auth_token.token
    else
      return auth_token unless auth_token.empty?
    end
  end
end
