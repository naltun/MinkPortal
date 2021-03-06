# class Ability
#   include CanCan::Ability

#   def initialize(user)
#     # Define abilities for the passed in user here. For example:
#     #
#     #   user ||= User.new # guest user (not logged in)
#     #   if user.admin?
#     #     can :manage, :all
#     #   else
#     #     can :read, :all
#     #   end
#     #
#     # The first argument to `can` is the action you are giving the user
#     # permission to do.
#     # If you pass :manage it will apply to every action. Other common actions
#     # here are :read, :create, :update and :destroy.
#     #
#     # The second argument is the resource the user can perform the action on.
#     # If you pass :all it will apply to every resource. Otherwise pass a Ruby
#     # class of the resource.
#     #
#     # The third argument is an optional hash of conditions to further filter the
#     # objects.
#     # For example, here the user can only update published articles.
#     #
#     #   can :update, Article, :published => true
#     #
#     # See the wiki for details:
#     # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
#   end
# end
require 'pry'

class Ability
  include CanCan::Ability
  #def initialize(current_user) current_contact ||= Contact.create(:role => 'visitor')
  def initialize(current_user)
  current_user ||= User.new # guest user
    
    #binding.pry
    if current_user.role == "admin"
      can :manage, :all

    elsif current_user.role == "ft"
      can :read, :all
      can :create, User
      can :update, User do |u|
        u.try(:user) == current_user || current_user.role = "ft"
      end
      can :create, Raft
      can :update, Raft do |u|
        u.try(:created_by) == current_user || current_user.role = "ft"
      end

    elsif current_user.role == "volunteer"
      cannot :create, User
      can :read, Tsighting do |s|
        s.try(:user) == current_user || current_user.role = "volunteer"
      end
      can :update, Tsighting do |s|
        s.try(:user) == current_user || current_user.role = "volunteer"
      end
      can :create, Tsighting do |s|
        s.try(:user) == current_user || current_user.role = "volunteer"
      end

    elsif current_user.role == "scientist"
      cannot :create, User
      can :read, :all

    else
      can :create, Tsighting
      cannot :create, User
    end
  end
end
