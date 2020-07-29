class User < ApplicationRecord
    has_many :parks
    has_many :playdates 
    has_many :comments, through: :parks

    has_secure_password

    validates :username, uniqueness: true, presence: true
    validates :password, presence: true, length: { minimum: 8, message: "must have at least 8 characters"}
    validates :family_size, presence: true
end
