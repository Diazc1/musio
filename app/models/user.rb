class User < ApplicationRecord
    has_secure_password


    has_many :comments
    has_many :songs, through: :comments
  

    validates :email, :username, presence: true, uniqueness: true
end
