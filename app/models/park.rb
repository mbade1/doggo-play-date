class Park < ApplicationRecord
    has_many :playdates
    has_many :comments
    has_many :users, through: :comments 
    
    validates :name, presence: true
    validates :location, presence: true
    validates :hound, presence: true
    validates :description, presence: true, length: { minimum: 15 }

    scope :five_star_reviews, -> { joins(:comments).where('comments.park_review = ?', 5)}

end
