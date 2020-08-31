class LikesController < ApplicationController
    before_action :find_professor
    before_action :find_like, only: [:destroy]
    skip_before_action :verify_authenticity_token

    def create
        if already_liked?
          flash[:notice] = "You can't like more than once"
        else
          @professor.likes.create(user_id: current_user.id)
        end
        redirect_to professor_path(@professor)
      end
      def destroy
        if !(already_liked?)
          flash[:notice] = "Cannot unlike"
        else
          @like.destroy
        end
        redirect_to professor_path(@professor)
      end       
      
    private
    def already_liked?
        Like.where(user_id: current_user.id, professor_id:
        params[:professor_id]).exists?
      end
    def find_professor
      @professor = Professor.find(params[:professor_id])
    end

    def find_like
        @like = @professor.likes.find(params[:id])
     end

end
