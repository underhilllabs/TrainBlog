class SessionReportPolicy < ApplicationPolicy
  def index?
    true
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
  def update?
    create?
  end
end
