class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :user
      can :read, :all
      can :manage, TicketItem, user: user
    else
      can    :read, :all
      cannot :read, TicketCategory
    end
  end
end
