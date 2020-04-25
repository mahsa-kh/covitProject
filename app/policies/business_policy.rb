class BusinessPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user_is_owner? # Only users with owner: true can create a new business
  end

  def show?
    true
  end

  def update?
    current_user? # Only current_user can edit his/her restaurant
  end

  def destroy?
    current_user?
  end

  private

  def user_is_owner?
    user.owner
  end

  def current_user?
    record.user == user
  end
end
