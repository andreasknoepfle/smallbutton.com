class PostRefinery < ApplicationRefinery

  def create
      [:title, :description, :content, :image, :published]
  end

  def update
      create
  end

end
