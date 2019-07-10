class AnimalPolicy < ApplicationPolicy
    attr_reader :user, :animal

    def initialize(user, animal)
      @user = user
      @animal = animal
    end

    def edit?
        raise
    end

    # def show?
    #     true
    # end
end