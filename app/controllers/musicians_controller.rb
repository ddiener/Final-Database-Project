class MusiciansController < ApplicationController
	before_action :find_musician, only: [:show, :edit, :update, :destroy]

	def index
		@musicians = Musician.all
		if params[:search]
			@musicians = Musician.search(params[:search]).order("created_at DESC")
		else
			@musicians = Musician.all.order("created_at DESC")
		end
	end 

	def show
	end 

	def new
		@musician = Musician.new
	end

	def create
		@musician = Musician.new(musician_params)

		if @musician.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def search
		@musicians = Musician.search(params[:search])
	end

	def edit
	end

	def update 
		if @musician.update(musician_params)
			redirect_to musician_path(@musician)
		else
			render 'edit'
		end
	end

	def destroy
		@musician.destroy
		redirect_to root_path
	end

	private 

		def musician_params
			params.require(:musician).permit(:name, :city, :musician_img)
		end

		def find_musician
			@musician = Musician.find(params[:id])
		end

end
