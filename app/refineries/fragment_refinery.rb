class FragmentRefinery < ApplicationRefinery
  def new
    [:type]  
  end
  
  def create
      [:value, :caption, :type]
  end

  def update
      [:value, :caption, :move_to]
  end

end
