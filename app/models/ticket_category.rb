class TicketCategory < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug, use: :slugged

  # Validations
  SLUG_REGEX = /\A^[\w&-]+$\Z/
  validates :name, :slug, presence: true, length: { in: 4..250 }
  validates :slug, uniqueness: { case_sensitive: false },
                   format: SLUG_REGEX

  # Callbacks
  before_validation :format_slug

  private
    def format_slug
      self.slug = self.slug.downcase.parameterize unless slug.nil?
    end
end
