class BusinessOfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
   create?
  end

  def create?
    user.businesses.pluck(:id).include?(record.business.id)
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

  def remove_from_bag?
    true
  end

  def increase_to_bag?
    true
  end
end
