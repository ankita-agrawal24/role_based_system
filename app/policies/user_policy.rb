class UserPolicy < ApplicationPolicy
  attr_reader :user, :record
  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    @user.business?
  end

  def update?
    @user.business?
  end

  def edit?
    @user.business?
  end

  def destroy?
    @user.business?
  end

  def add_employee?
    @user.business?
  end
end
