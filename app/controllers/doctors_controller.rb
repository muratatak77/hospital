class DoctorsController < ApplicationController

	def index
		@doctors = Doctor.all
	end

	def show
	
	end

	def new2
		
	end

	def edit
		
	end

	def create
		puts "create geldi"	
	end

end
