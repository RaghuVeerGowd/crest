class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role_name == 'Admin' 
      can :manage, :all
     
    end
  end
end