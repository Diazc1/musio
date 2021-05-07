class CommentsController < ApplicationController
    before_action :find_song, only: [:index, :new, :create]

    def index 
        if @song
            @comments = @song.comments
        else
            @comments = Comment.all 
        end
    end

    def new 
        if @song
            @comment = @song.comments.build
        else
            @comment = Comment.new
            @comment.build_song
        end
    end


    def create
        if @song
            @comment = @song.comments.build(comment_params)
        else
            @comment = Comment.new(comment_params)
        end

        if @comment.save
            redirect_to comment_path(@comment)
        else
            render :new
        end
    end

    def show
        @comment = Comment.find_by(params[:comment_id])
    end


    def destroy
        Comment.find_by(params[:comment_id]).destroy
        redirect_to comments_path
    end



    private

    def comment_params
        params.require(:comment).permit(:content, :user_id, :song_id, user_attributes:[:username])
    end

    def find_song
        @song = Song.find_by(params[:song_id])
    end


end
