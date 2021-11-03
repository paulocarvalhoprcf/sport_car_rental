class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

  def all?
    is_admin?
  end

  private

  def is_admin?
    # @restaurant => record
    # current_user => user
    user.admin # O mesmo que @restaurant.user == current_user
  end
end
