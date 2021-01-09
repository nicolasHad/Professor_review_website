class DegreeReviewsController < ApplicationController

    def create
        @degree = Degree.find(params[:degree_id])
        @review = @degree.degree_reviews.create(degree_review_params)
        redirect_to degree_path(@degree)
      end
     
      private
        def degree_review_params
          params.require(:degree_review).permit(:body)
        end


end
