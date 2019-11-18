class Private::BaseController < ApplicationController
    before_action :validate_token

    # def validate_token
    #   user = User.where(token: params[:token]).last unless params[:token].nil?
    #   if (user.nil?)
    #      render json: {message: "token expired"}, status: 401
    #   end
    # end

    def validate_token
        teste_json = {"teste": "teste"}
        render json: teste_json
    end
end