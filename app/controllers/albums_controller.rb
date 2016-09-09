class AlbumsController < ApplicationController
	before_action :find_album, only: [:show, :edit, :update, :destroy]

	def index
		@album = Album.all
	end

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(album_params)

		if @album.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @album.update(album_params)
			redirect_to album_path(@album)
		else
			render 'edit'
		end
		
	end

	def destroy
	end

	private

	def album_params
		params.require(:album).permit(:albumName, :artistDate, :releaseDate, :genreId, :labelId, :album_img)
	end

	def find_album
		@album = Album.find(params[:id])
	end

end
