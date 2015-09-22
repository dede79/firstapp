class Ability
  include CanCan::Ability
  # cancancan function below needed to be modified in order for rspec tests to pass.
  def initialize(user)
    user ||= User.new # guest user (not logged in)
      can :manage, User, id: user.id
      can :create, Comment, id: user.id
      if user.admin?
        can :destroy, :all
    end
    # the above privilege assignment is equal / equivalent to:
    #
    # can :show, User, id: user.id
    # can :edit, User, id: user.id
    #   an edit action is allowed only to User instances that have id equal to the id of the user that is trying
    #   to do the edit action, a.k.a the logged in user  that calls /users/:id/edit
    # 
    # can :index, User, id: user.id
    # ...e.t.c.
    # 
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
