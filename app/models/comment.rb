class Comment < ApplicationRecord
  belongs_to :park
  belongs_to :user

  validates :comment, presence: true, length: { minimum: 15 }
  validates :park_id, presence: true
  validates :user_id, uniqueness: { scope: :id }
  validates :park_review, presence: true
end