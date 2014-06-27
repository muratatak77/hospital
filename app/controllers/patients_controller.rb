require 'open-uri'

class PatientsController < ApplicationController
before_action :set_patient, only:[:show, :edit, :update, :destroy] 
before_action :read_html_file , only:[:new, :create, :edit, :update]	

	def index
		@patients = Patient.all
	end

	def new
		@patient = Patient.new
	
	end

	def create
		@patient = Patient.new(patient_params)
		if @patient.save
			redirect_to @patient
		else
			render action: 'new'
		end
	end

	def show
		
	end

	def edit
		
	end

	def update	
		if @patient.update(patient_params)
			redirect_to @patient
		else
			render action: 'edit'
		end
	end

	def destroy
		@patient.destroy
			redirect_to patients_path
	end

private
	def set_patient
		@patient = Patient.find(params[:id])
	end

	def read_html_file
		@page = Nokogiri::HTML(open("http://www.hepsiburada.com/"))
	end



	def patient_params
		params.require(:patient).permit(:name,:surname,:disease,:bio, :doctor_id, :interest)	
	end
end
