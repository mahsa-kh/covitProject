class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    current_user_and_not_owner?
  end

  def create?
    current_user_and_not_owner?
  end

  def update?
    current_user_and_not_owner?
  end

  def update_total_amount_cents?
    current_user_and_not_owner?
  end

  def update_total_amount_cents_checkout?
    current_user_and_not_owner?
  end

  private

  def current_user_and_not_owner?
    record.user == user && !user.owner
  end
end
