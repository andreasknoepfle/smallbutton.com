class PostsController < InheritedResources::Base
  before_action :authenticate_user! , :except => [:index,:show,:image,:thumb]
  custom_actions :resource => [:image,:thumb]
  
  def index
    @big_header = true
    index!
  end
  
  def image
    content = resource.image.read
    render_image content
  end
  
  def thumb
    content = resource.image.thumb.read
    render_image content
  end

  private
    def permitted_params
      params.permit( :post => [:title,:description, :image] )
    end
    
    def render_image content
      if stale?(etag: content, last_modified: resource.updated_at.utc, public: true)
        send_data content, type: resource.image.file.content_type, disposition: "inline"
        expires_in 0, public: true
      end
    end
end
