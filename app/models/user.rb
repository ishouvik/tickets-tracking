class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  rolify

  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Callbacks
  before_create :add_user_role

  # Validations
  validates :name, presence: true, length: { in: 3..50 }

  # Associations
  has_many :tickets, class_name: 'TicketItem'

  private
    def add_user_role
      self.add_role :user
    end
end
