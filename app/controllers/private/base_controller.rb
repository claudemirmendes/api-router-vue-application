class Private::BaseController < ApplicationController
before_action :verify_token


  def verify_token
    token = request.get_header('HTTP_AUTHORIZATION')
    auth_token = AuthToken.where(token: token).first unless token.nil?
    expired_date =  auth_token.expired_date unless auth_token.nil?
    if (expired_date.nil?)
      render json: {"message":  "usuário não autorizado", "error": 401}
    elsif (expired_date < DateTime.now)
      render json: {"message": "token expirado", "error": 401}
    end 
  end
end