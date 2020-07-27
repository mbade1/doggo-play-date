class Playdate < ApplicationRecord
    belongs_to :park
    belongs_to :user #creator of it
    has_many :comments
    has_many :users, through: :comments #people who have commented on it
end
