class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  private

  def is_owner_or_admin?
    # @restaurant => record
    # current_user => user
    record.user_id == user || user.admin # O mesmo que @restaurant.user == current_user
  end
end
