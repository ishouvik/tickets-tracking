class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Callbacks
  before_create :add_user_role

  # Validations
  validates :name, presence: true, length: { in: 3..50 }

  private
    def add_user_role
      self.add_role :user
    end
end
