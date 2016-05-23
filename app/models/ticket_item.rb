class TicketItem < ActiveRecord::Base
  # Validations
  validates            :title,       :description, presence: true
  validates            :title,       length: { in: 3..250 }
  validates            :description, length: { minimum: 10 }
  validates_associated :category

  # Scopes
  scope :sorted, -> { order(created_at: :desc) }

  # Associations
  belongs_to :user
  belongs_to :category, class_name: 'TicketCategory'
end
