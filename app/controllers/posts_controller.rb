class PostsController < InheritedResources::Base
  before_action :authenticate_user! , :except => [:index,:show]
  custom_actions :resource => :image
  def index
    @big_header = true
    index!
  end
  def image
    content = resource.image.read
    if stale?(etag: content, last_modified: resource.updated_at.utc, public: true)
      send_data content, type: resource.image.file.content_type, disposition: "inline"
      expires_in 0, public: true
    end
  end
  private
    def permitted_params
      params.permit( :post => [:title,:description, :image] )
    end
end
