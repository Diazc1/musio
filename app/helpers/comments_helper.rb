module CommentsHelper

    def fields_for_helper(f)
        if @song 
            f.hidden_field :song_id, value: @song.id
        else 
            render partial: "fields_for", locals: {f: f}
        end
    end

    def index_header
        if @song 
            content_tag(:h1, "#{@song.name}'s comments")
        else 
            content_tag(:h1, "All Comments")
        end 
    end
end
