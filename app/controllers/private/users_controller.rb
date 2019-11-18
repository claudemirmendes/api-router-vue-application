class Private::UsersController < Private::BaseController
    def index
       user = User.last
       render json: user
    end
end
