class User < ApplicationRecord
    has_many :parks
    has_many :playdates 
    has_many :commented_playdates, through: :parks, source: :playdates

    has_secure_password

    validates :username, uniqueness: true, presence: true
    validates :password, presence: true, length: { minimum: 8}
    validates :family_size, presence: true
end
