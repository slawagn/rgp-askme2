class Question < ApplicationRecord
  scope :latest, -> { order(created_at: :desc) }

  validates :body,
    presence: true,
    length:   { maximum: 280 }

  validates :user_id,
    presence: true
end
