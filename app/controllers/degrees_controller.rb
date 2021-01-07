class DegreesController < ApplicationController
  def index
    @degrees=Degree.search(params[:search])
    
end

def search
      
    
end

def show
    @degree = Degree.find(params[:id])
   
  end


def new 
    @degree = Degree.new
end

def create

    @degree = Degree.new(degree_params)

    if @degree.save
        redirect_to @degree
      else
        render 'new'
      end
      
end

def update
  @degree = Degree.find(params[:id])
  respond_to do |format|
    if @degree.update(professor_params)
      format.html { redirect_to @degree, notice: 'User was successfully updated.' }
      format.json { render :show, status: :ok, location: @degree }
    else
      format.html { render :edit }
      format.json { render json: @degree.errors, status: :unprocessable_entity }
    end
  end
end

def edit
  @degree = Degree.find(params[:id])
end

def destroy
  @status_update = Degree.find(params[:id])
  if @status_update.present?
    @status_update.destroy
  end
  redirect_to professors_url
end

private
    def degree_params
     params.require(:degree).permit(:code, :title)
    end

def set_degree
  @degree = Degree.find(params[:id])
end

end
