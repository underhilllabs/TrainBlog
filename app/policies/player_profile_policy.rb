# frozen_string_literal: true

class PlayerProfilePolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    user == record.user
  end

  def new?
    create?
  end

  def update?
    create?
  end

  def destroy?
    false
  end
end
