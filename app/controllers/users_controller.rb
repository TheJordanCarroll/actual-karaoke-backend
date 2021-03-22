class UsersController < ApplicationController
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
        user = User.find(params[:id])
        render json: user
      end
    
      def edit
      end
    
      def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
      end
    
      def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
      end
    
      private
      def user_params
          params.permit(:id, :email, :username, :password, :image)
      end
end