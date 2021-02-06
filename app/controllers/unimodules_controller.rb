class UnimodulesController < ApplicationController
  def index
    @unimodules=Unimodule.search(params[:search])
    
end

def search
  

end

def show
    @unimodule = Unimodule.find(params[:id])
   
  end


def new 
    @unimodule = Unimodule.new
end

def create

    @unimodule = Unimodule.new(unimodule_params)

    if @unimodule.save
        redirect_to @unimodule
      else
        render 'new'
      end
      
end

def update
  @unimodule = Unimodule.find(params[:id])
  respond_to do |format|
    if @unimodule.update(unimodule_params)
      format.html { redirect_to @unimodule, notice: 'unimodule was successfully updated.' }
      format.json { render :show, status: :ok, location: @unimodule }
    else
      format.html { render :edit }
      format.json { render json: @unimodule.errors, status: :unprocessable_entity }
    end
  end
end

def edit
  @unimodule = Unimodule.find(params[:id])
end

def destroy
  @status_update = Unimodule.find(params[:id])
  if @status_update.present?
    @status_update.destroy
  end
  redirect_to unimodules_url
end

private
    def unimodule_params
     params.require(:unimodule).permit(:code, :title)
end

def set_unimodule
  @unimodule = Unimodule.find(params[:id])
end
end
