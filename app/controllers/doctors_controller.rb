class DoctorsController < ApplicationController

	def index
		@doctors = Doctor.all
	end

	def show
		@doctor = Doctor.find(params[:id])
	end

	def edit
		@doctor = Doctor.find(params[:id])
		@managers = Manager.all
	end

	def new
		@managers = Manager.all
	end

	def update
		@doctor = Doctor.find(params[:id]).update(permit_params)
		redirect_to doctors_path
	end

	def create
		Doctor.create(permit_params)
		redirect_to doctors_path
	end

	def destroy
		Doctor.find(params[:id]).destroy
		redirect_to doctors_path
	end

	private
	def permit_params
		params.permit(:name,:surname,:consultancy, :manager_id, :bio,:phone)
	end

end
