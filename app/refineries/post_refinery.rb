class PostRefinery < ApplicationRefinery

  def create
      [:title,:description, :image]
  end

  def update
      create
  end

end
