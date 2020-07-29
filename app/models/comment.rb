class Comment < ApplicationRecord
  belongs_to :park
  belongs_to :user
  validates :comment, presence: true
  validates :park_id, presence: true
  validates :user_id, presence: true

end