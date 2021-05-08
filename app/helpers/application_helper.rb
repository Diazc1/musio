module ApplicationHelper

    #memoization
    def current_user
        @current_user ||= User.find_by_id(session["user_id"])
    end

    def logged_in?
        current_user
    end

    def find_comment 
        @comment = Comment.find(params[:id])
    end

    def find_song
        @song = Song.find_by_id(params[:id])
    end

    
end
