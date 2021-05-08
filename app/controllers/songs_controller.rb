class SongsController < ApplicationController

    def search
        @songs = Song.search(params[:name])
        render :index
    end

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find_by_id(params[:id])
        @comment = Comment.new
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(song_params)

        if @song.save 
            redirect_to @song
        else
            render :new
        end
    end

    def edit
        @song = Song.find_by_id(params[:id])
    end

    def update 
        @song = Song.find_by_id(params[:id])
        @song.update(song_params)

        if @song.save
            redirect_to @song
        else
            render :edit
        end
    end

    def destroy
        Song.find_by_id(params[:id]).destroy
        redirect_to songs_path
    end

    private

    def song_params
        params.require(:song).permit(:name, :artist_name, :genre, :lyrics)
    end


end
