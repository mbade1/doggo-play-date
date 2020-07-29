class Comment < ApplicationRecord
  has_many :users, through: :parks, source: :playdate
end