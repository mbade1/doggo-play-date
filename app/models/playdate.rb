class Playdate < ApplicationRecord
    belongs_to :park
    belongs_to :user
    has_many :comments
    has_many :users, through: :comments
end
