class Ability
  include CanCan::Ability

  def initialize(user)
    # See the wiki for details: https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities

    user ||= User.new # guest user

    # use this if you get stuck:
    # if user.id == 1 #quick hack
    #   can :manage, :all
    if user.role? :superadmin
      can :manage, :all
    else
      # put restrictions for other users here
    end
  end
end
