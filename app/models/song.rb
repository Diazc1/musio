class Song < ApplicationRecord
    has_many :comments 
    has_many :users, through: :comments

    validates :name, :artist_name, :genre, :lyrics, presence: true
    validates :name, uniqueness: {scope: :name} 



    scope :search, -> (query) { self.where("name LIKE ?", "%#{query}%") }


end
