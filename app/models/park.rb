class Park < ApplicationRecord
    has_many :playdates
    has_many :comments
    has_many :users, through: :comments #people who have commented on it
    
    validates :name, presence: true
    validates :location, presence: true
    validates :hound, presence: true
    validates :description, presence: true, length: { minimum: 15 }

end
