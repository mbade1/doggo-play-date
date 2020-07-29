class Playdate < ApplicationRecord
    belongs_to :park
    belongs_to :user #creator of it
    has_many :comments
end
