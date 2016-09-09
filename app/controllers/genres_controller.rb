class GenresController < ApplicationController
	before_action :find_genre, only: [:show, :edit, :update, :destroy]

	def index
		@genre = Genre.all
	end

	def new
		@genre = Genre.new
	end

	def create
		@genre = Genre.new(genre_params)

		if @genre.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @genre.update(genre_params)
			redirect_to genre_path(@genre)
		else
			render 'edit'
		end
		
	end

	def destroy
	end

	private

	def genre_params
		params.require(:genre).permit(:genreName, :description)
	end

	def find_genre
		@genre = Genre.find(params[:id])
	end

end
