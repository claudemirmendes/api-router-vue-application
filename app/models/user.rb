# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  def self.try_login(user, password)
    if user.authenticate(password)
      true
    else
      false
    end
  end
end
