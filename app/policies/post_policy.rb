# frozen_string_literal: true

class PostPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end
end
