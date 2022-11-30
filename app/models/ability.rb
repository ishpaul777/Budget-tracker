class Ability
  include CanCan::Ability

  def initialize(user)
    # return if user is not logged in
    return unless user.present?

    # can access only their own profile
    can :read, User, id: user.id
    # can manage only their own groups and expenses
    can :manage, Group, user_id: user.id
    can :manage, Expense, user_id: user.id
  end
end
