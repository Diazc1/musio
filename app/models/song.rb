class Song < ApplicationRecord
    has_many :comments 
    has_many :users, through: :comments

    validates :name, presence: true
    validates :artist_name, presence: true
    validates :genre, presence: true
    validates :lyrics, presence: true
end
