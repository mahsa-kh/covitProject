class BusinessOfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    current_user? # NOT WORKING (PUNDIT)
  end

  private

  def current_user?
    record.user == user # NOT WORKING (PUNDIT)
  end
end
