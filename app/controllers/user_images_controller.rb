class UserImagesController < ApplicationController
    skip_before_action :authorized, only: [ :index]


    def index 
        user_images = UserImage.all 
        render json: user_images
    end

    def create
        user_image = UserImage.create(user_image_params)
        if user_image.valid?
            render json: user_image
        else
            render json: {error: "failed to create user image"}, status: :not_acceptable
        end
    end

    def update
        user_image = UserImage.find(params[:id])
        if user_image.update(user_image_params)
            render json: user_image
        else 
            render json: {error: "failed to update user image"}, status: :not_acceptable
        end
    end

    private
    def user_image_params
        params.require(:user_image).permit(:user_id, :image_id, :fill_colors => [])
    end
end
