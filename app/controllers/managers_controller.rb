class ManagersController < ApplicationController
  before_action :set_manager, only: [:show, :edit, :update, :destroy]
  before_filter :check_for_cancel, :only => [:create, :update]

  def index
    #@managers = Manager.all
    @managers = Manager.unscoped.order("id DESC")
  end

  def edit
  end

  def update
    @manager.update(manager_params)
    redirect_to managers_path
  end


  def new
    @manager = Manager.new
  end

  def create
    @manager = Manager.create(manager_params)
    redirect_to managers_path
  end

  def destroy
    @manager.destroy
    redirect_to managers_path
  end


  def show
  end

  private

  def set_manager
    @manager = Manager.find(params[:id])
  end

  def manager_params
    params.require(:manager).permit(:name, :surname , :phone , :departman)
  end

  def check_for_cancel
    unless params[:cancel].blank?
      redirect_to managers_path
    end
  end


end
