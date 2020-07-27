class User < ApplicationRecord
    has_many :parks
    has_many :commented_playdates, through: :parks, source: :playdate
    has_many :playdates 
    
    has_secure_password

    validates :username, uniqueness: true, presence: true
end
