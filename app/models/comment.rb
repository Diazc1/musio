class Comment < ApplicationRecord
    #join table
    belongs_to :user
    belongs_to :song
end
