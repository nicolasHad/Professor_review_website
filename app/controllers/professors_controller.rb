# encoding: utf-8
class ProfessorsController < ApplicationController


    def index
        @professors=Professor.search(params[:search])
        
    end

    def search
      
    
    end

    def show
        @professor = Professor.find(params[:id])
       
      end


    def new 
        @professor = Professor.new
    end

    def create

        @professor = Professor.new(professor_params)

        if @professor.save
            redirect_to @professor
          else
            render 'new'
          end
          
    end

    def update
      @professor = Professor.find(params[:id])
      respond_to do |format|
        if @professor.update(professor_params)
          format.html { redirect_to @professor, notice: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @professor }
        else
          format.html { render :edit }
          format.json { render json: @professor.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit
      @professor = Professor.find(params[:id])
    end

    def destroy
      @status_update = Professor.find(params[:id])
      if @status_update.present?
        @status_update.destroy
      end
      redirect_to professors_url
  end

    private
        def professor_params
         params.require(:professor).permit(:name, :department, :position, :image)
    end

    def set_professor
      @professor = Professor.find(params[:id])
    end

end
