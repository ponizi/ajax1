class Task < ApplicationRecord
  validates :title, presence: true
  belongs_to :category
  validates :deadline, presence: true
  validates :category, presence: true
end
