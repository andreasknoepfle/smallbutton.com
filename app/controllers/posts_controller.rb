# frozen_string_literal: true

class PostsController < ApplicationController
  responders :flash
  respond_to :html
  respond_to :atom, only: [:index]

  before_action :authenticate_user!, except: %i[index show image thumb]
  before_action :set_post, only: %i[show edit update destroy image]
  before_action :set_big_header, only: [:index]

  def index
    @posts = policy_scope(Post).desc(:created_at).page(params[:page]).per(10)
    render partial: @posts if request.xhr?
    respond_with @posts do |format|
      format.rss do
        redirect_to posts_path(format: :atom),
                    status: :moved_permanently
      end
    end
  end

  def show
    authorize @post
    @other_posts = other_posts_scope
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new post_params
    authorize @post
    @post.save
    respond_with @post
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
    @post.update(post_params)
    respond_with @post
  end

  def destroy
    authorize @post
    @post.destroy
    respond_with @post
  end

  def image
    case required_image_style
    when :thumb
      render_image @post.image.thumb.read
    when :bigger
      render_image @post.image.bigger.read
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

  def render_image(data)
    return unless image_stale?
    send_data data, type: @post.image.file.content_type, disposition: 'inline'
    expires_in 0, public: true
  end

  def image_stale?
    stale?(etag: data, last_modified: @post.updated_at.utc, public: true)
  end

  def required_image_style
    params[:style].to_sym
  rescue StandardError
    nil
  end

  def post_params
    params
      .require(:post)
      .permit(:title, :description, :content, :image, :published)
  end

  def other_posts_scope
    policy_scope(Post).not_in(id: @post.id).desc(:created_at).limit(5)
  end
end
