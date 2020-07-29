class Playdate < ApplicationRecord
    belongs_to :park
    belongs_to :user #creator of it

    validates :date, presence: true 
    validates :time, presence: true 
    validates :park_id, presence: true 
    validates :user_id, presence: true 




end


