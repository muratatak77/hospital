class PatientsController < ApplicationController
	
	def index
		@patients = Patient.all	

	end

	def show
		@patient = Patient.find(params[:id])
	end

	def edit
		@patient = Patient.find(params[:id])
		@doctors = Doctor.all
	end

	def update
		@patient = Patient.find(params[:id])
		@patient.update(params_permit)
		redirect_to patients_path
	end

	def new
		@patient = Patient.new	
		@doctors = Doctor.all
	end

	def create
		# @patient = @doctor.patients.create(params_permit)
		Patient.create(params_permit)
		redirect_to patients_path
	end

	def destroy
		# @patient = @doctor.patients.find(params[:id])
		@patient = Patient.find(params[:id])
		@patient.destroy
		redirect_to patients_path
	end

	private
	def params_permit
		params.permit(:name , :surname , :phone , :doctor_id , :phone)
	end


end
