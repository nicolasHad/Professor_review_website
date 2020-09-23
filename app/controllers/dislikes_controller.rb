# encoding: utf-8
class DislikesController < ApplicationController
    before_action :find_professor
    before_action :find_dislike, only: [:destroy]
    skip_before_action :verify_authenticity_token

    def create
        if already_disliked?
          flash[:notice] = "You can't like more than once"
        else
          @professor.dislikes.create(user_id: current_user.id)
        end
        redirect_to professor_path(@professor)
      end

      def destroy
        if !(already_disliked?)
          flash[:notice] = "Cannot unlike"
        else
          @dislike.destroy
        end
        redirect_to professor_path(@professor)
      end

  private
  def already_disliked?
    Dislike.where(user_id: current_user.id, professor_id:
    params[:professor_id]).exists?
  end

  def find_professor
    @professor = Professor.find(params[:professor_id])
  end
  def find_dislike
    @dislike = @professor.dislikes.find(params[:id])
 end
end
