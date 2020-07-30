class Playdate < ApplicationRecord
    belongs_to :park
    belongs_to :user

    validates :date, presence: true 
    validates :time, presence: true 

end


