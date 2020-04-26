class BusinessOfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    condition = user.businesses.pluck(:id).include?(record.biz_offer_id.to_i)
    if condition
      true
    else
      false
    end
  end

  def create?
    current_user?
  end

  def update?
    condition = user.businesses.pluck(:id).include?(record.biz_offer_id.to_i)
    if condition
      true
    else
      false
    end
  end

  private

  def current_user?
    record.business.user == user
  end
end
