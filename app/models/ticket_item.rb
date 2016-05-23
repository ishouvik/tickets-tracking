class TicketItem < ActiveRecord::Base
  # Validations
  validates :title,       :description, presence: true
  validates :title,       length: { in: 3..250 }
  validates :description, length: { minimum: 10 }

  # Scopes
  scope :sorted, -> { order(created_at: :desc) }

  # Associations
  belongs_to :user
end
