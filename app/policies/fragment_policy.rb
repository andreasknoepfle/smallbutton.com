class FragmentPolicy < Struct.new(:user, :post)
  
  def new?
    true
  end

  def create?
    true
  end
  
  def edit?
    true
  end
  
  def update?
    true
  end
end