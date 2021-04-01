class UsersController < ApplicationController
      before_action :authenticate  
      
      def signin
        # user_params = params.permit(:username, :password, :bio, :image)
    
        user = User.create(user_params)
    
        if user.valid?
          token = JWT.encode({ user_id: user.id }, 'my_secret', 'HS256')
          render json: { user: UserSerializer.new(user), token: token }, status: :created
        else
          render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def login
        user = User.find_by(username: params[:usernames])
        if user && user.authenticate(params[:password])
          token = JWT.encode({ user_id: user.id }, 'my_secret', 'HS256')
          render json: { user: UserSerializer.new(user), token: token }
        else
          render json: { error: user.errors.full_messages }, status: :unauthorized
        end
      end

      def index
            users=User.all
            render json: users
      end
    
      def new
      end
    
      def create
        user = User.create(comment_params)
        render json: user
      end
    
      def show
        # user = User.find(params[:id])
        # render json: user
        # render json: @current_user
        @current_user.update(username: params[:username], email: params[:email], password: params[:password])
        render json: @current_user
      end
    
      def edit
      end
    
      def update
        # user = User.find(params[:id])
        # user.update(user_params)
        # render json: user
        user = AuthorizeRequest.new(request.headers).user
        if user
          user.update(username: params[:username], email: params[:email], password: params[:password])
          render json: user
        else
          render json: { error: "Unauthorized" }, status: :unauthorized
        end
      end
    
      def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
      end

      private
      def user_params
          params.permit(:id, :email, :username, :password)
      end
end