class ReviewsController < ApplicationController

    def create
        @professor = Professor.find(params[:professor_id])
        @review = @professor.reviews.create(review_params)
        redirect_to professor_path(@professor)
      end
     
      private
        def review_params
          params.require(:review).permit(:body)
        end
    
end
