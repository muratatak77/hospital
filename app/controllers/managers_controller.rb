class ManagersController < ApplicationController
before_action :set_manager, only:[:show, :edit, :update, :destroy]   
  
  def index
  	@managers = Manager.all
  end

  def new
    @manager = Manager.new
  end

  def create 
    @manager = Manager.new(manager_params)
    if @manager.save 
      redirect_to @manager
    else
      render action: 'new'
    end
  end

  def show
  
  end

  def edit
    
  end

  def update
     
     if @manager.update(manager_params)
        redirect_to @manager
     else
        render action: 'edit'
    end
  end

  def destroy
    @manager.destroy
      redirect_to managers_path
  end
private
  def set_manager
    @manager = Manager.find(params[:id])
  end
  def manager_params
    params.require(:manager).permit(:name,:surname,:phone)
  end

end
