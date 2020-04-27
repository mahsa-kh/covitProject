class BusinessOfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.businesses.pluck(:id).include?(record.biz_offer_id.to_i)
  end

  def create?
    new?
  end

  def edit?
    user.businesses.pluck(:id).include?(record.business.id)
  end

  def update?
    edit?
  end

  def add_to_bag?
    true
  end
end
