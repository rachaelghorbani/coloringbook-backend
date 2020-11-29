class ImagesController < ApplicationController
    def index 
        images = Image.all 
        render json: images
    end 

    def create
        image = Image.create(image_params)
        if image.valid?
            render json: image
        else
            render json: {error: "failed to create user"}, status: :not_acceptable
        end
    end

    private

    def image_params
        params.require(:image).permit(:component, :title)
    end
end
