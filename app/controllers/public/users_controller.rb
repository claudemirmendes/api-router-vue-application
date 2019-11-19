# frozen_string_literal: true

class Public::UsersController < ApplicationController
  def login
    user = User.where(email: params[:email]).last
    password = params[:password]
    auth = User.try_login(user, password) unless user.nil?
    if auth == true
      token = AuthToken.generate_token(user) unless user.nil?
      render json: token
    elsif auth == false || user.nil?
      render json: { 'message': 'email ou senha inválidos' }
    end
  end
end
