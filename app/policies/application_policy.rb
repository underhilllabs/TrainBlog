class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    user && user.present?
  end

  def new?
    create?
  end

  def update?
    user_is_owner_of_record?
  end

  def edit?
    update?
  end

  def destroy?
    user_is_owner_of_record?
  end

  def user_is_owner_of_record?
    user&.id == record.user_id
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
