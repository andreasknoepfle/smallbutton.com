class PostsController < ApplicationController

  responders :flash
  respond_to :html

  before_action :authenticate_user! , except: [:index,:show,:image,:thumb]
  before_filter :set_post, only: [:show, :edit, :update, :destory, :image]
  before_filter :set_big_header, only: [:index]

  def index
    @posts = policy_scope(Post)
  end

  def show
    authorize @post
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new params.for(Post).refine
    authorize @post
    @post.save
    respond_with @post
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
    @post.update params.for(@post).refine
    respond_with @post
  end

  def image
    case params[:style].to_sym
    when :thumb
      render_image @post.image.thumb.read
    else
      render_image @post.image.read
    end
  end


  private

    def set_post
      @post = Post.find params[:id]
    end

    def set_big_header
      @big_header = true
    end

    def render_image data
      if stale?(etag: data, last_modified: @post.updated_at.utc, public: true)
        send_data data, type: @post.image.file.content_type, disposition: "inline"
        expires_in 0, public: true
      end
    end
end
