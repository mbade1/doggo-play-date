class Park < ApplicationRecord
    has_many :playdates
    has_many :comments
    has_many :users, through: :comments #people who have commented on it

end
