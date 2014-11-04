class PostPolicy < Struct.new(:user, :post)

  def show?
    post.published? || user
  end

  def new?
    create?
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    true
  end

  def destroy?
    true
  end
  class Scope < Struct.new(:user, :scope)
    def resolve
      if user
        scope.all
      else
        scope.published
      end
    end
  end

end
