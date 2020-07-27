class User < ApplicationRecord
    has_many :parks
    has_many :playdates, through: :parks
    has_secure_password
end
