class PostsController < InheritedResources::Base
  before_action :authenticate_user! , :except => [:index,:show]
  def index
    @big_header = true
    index!
  end
  private
  def permitted_params
      params.permit( :post => [:title,:description] )
    end
end
