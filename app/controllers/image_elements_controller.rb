class ImageElementsController < ApplicationController


    def new
        @image_elements = Image_elements.new
    end

    def create
        @professor = Professor.find(params[:id])
        @image_element = @professor.image_elements.create(image_elements_params)
        redirect_to @professor
    end

    def update
        @professor = Professor.find(params[:id])
        @image_element = @professor.image_elements.find(params[:id])
        if image_elements.image.attach(image_elements_params[:image])
            redirect_to @professor
        else
            render :edit
        end
    end

    def edit
        @image_element = @professor.image_elements.find(params[:id])
      end


    private

    def set_image_element
        @image_elements = @professor.image_elements.find(params[:id])
      end

      def image_elements_params
        params.require(:image_element).permit(:image)
      end
      
end