class User < ApplicationRecord

    has_secure_password

    has_many :user_songs
    has_many :songs, through: :user_songs
end
