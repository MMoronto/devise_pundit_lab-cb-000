class UserPolicy < ApplicationPolicy
  def index?
    user.admin?
  end

  def show?
    user.admin? || user == record
  end

  alias_method :update?, :index?
  alias_method :destroy?, :index?  
end
