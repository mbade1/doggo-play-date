class Playdate < ApplicationRecord
    belongs_to :park
    belongs_to :user #creator of it

    validates :name, presence: true
    validates :location, presence: true
    validates :hound, presence: true
    validates :description, presence: true, length: { minimum: 15 }

end


