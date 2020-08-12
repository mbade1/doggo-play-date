class Playdate < ApplicationRecord
    belongs_to :park
    belongs_to :user

    validates :date, presence: true
    validates :time, presence: true 

    scope :current_date, -> (day) { where(date: day)}
    def self.current_date(day)
        where(date: day)
    end

end


