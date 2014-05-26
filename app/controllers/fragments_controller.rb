class FragmentsController < InheritedResources::Base
  before_action :authenticate_user! 
  actions :all, except: [:show,:index]
  respond_to :js
  
  before_filter :get_post
  belongs_to :post
  
  private 
    def get_post
      @post = Post.find params[:post_id]
    end
    
    def begin_of_association_chain
      @post
    end
     
    def permitted_params
      params.permit( :fragment => [:value, :caption, :type] )
    end
  
end