class BusinessPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user_is_owner? # Only users with owner: true can create a new business
  end

  def update?
    record.user == user
  end

  private

  def user_is_owner?
    user.owner
  end
end
