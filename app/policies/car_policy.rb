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
    is_admin?
  end

  def create?
    is_admin?
  end

  def destroy?
    is_admin?
  end

  private

  def is_admin?
    # @restaurant => record
    # current_user => user
    user.admin # O mesmo que @restaurant.user == current_user
  end
end
