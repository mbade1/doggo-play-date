class Playdate < ApplicationRecord
    belongs_to :park
    belongs_to :user

    validates :date, presence: true
    scope :date, ->(date) { where("date < ?", date) if date.present? }
    validates :time, presence: true 

end


