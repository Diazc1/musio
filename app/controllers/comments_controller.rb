class CommentsController < ApplicationController
    before_action :find_song, only: [:index, :show, :new, :create]

    def index 
        
        if @song
            @comments = @song.comments
        else
            @comments = Comment.all 
        end
    end

    def show
        if @song
            @comment = @song.comments.find_by(id: params[:id])
        else 
            @comment = Comment.find(params[:id])
        end
    end

    def new 

        @comment = Comment.new
    end


    def create

        @comment = @song.comments.build(comment_params)

        if @comment.valid?
            @comment.save
            redirect_to song_comment_path(@song, @comment)
        else
            render :new
        end
    end

    def edit
        @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])

        @comment.update(comment_params)

        if @comment.save
            redirect_to @comment
        else
            render :edit
        end
    end



    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to comments_path
    end



    private

    def comment_params
        params.require(:comment).permit(:content, :user_id, :song_id)
    end

    def find_song
        @song = Song.find_by(id: params[:song_id])
    end


end
