class ModreviewsController < ApplicationController


    def create
        @unimodule = Unimodule.find(params[:unimodule_id])
        @modreview = @unimodule.modreviews.create(modreview_params)
        redirect_to unimodule_path(@unimodule)
      end
     
      private
        def modreview_params
          params.require(:modreview).permit(:body)
        end


end
