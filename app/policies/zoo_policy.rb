class ZooPolicy < ApplicationPolicy
  
    def new?
        # If the current user's role is 'admin', let them pass
        @user.role == Role.first
    end

    def show?
        true
    end
end