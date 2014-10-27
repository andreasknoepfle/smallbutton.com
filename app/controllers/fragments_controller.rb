class FragmentsController < ApplicationController
  
  before_action :authenticate_user! 
  responders :flash, :location
  respond_to :js
  
  before_filter :set_post
  before_filter :set_fragment , only: [:edit,:update,:destroy]
    
  def new
    @fragment = @post.fragments.build params.for(Fragment).refine
    authorize @fragment 
  end
    
  def create
    @fragment = @post.fragments.build params.for(Fragment).refine
    authorize @fragment
    @fragment.save
    respond_with @fragment, :location => post_path(@post)
  end
    
  def edit
    authorize @fragment
  end
    
  def update
    authorize @fragment
    @fragment.update params.for(@fragment).refine
    respond_with  @fragment, :location => post_path(@post)
  end
      
  def destroy
    authorize @fragment
    @fragment.destroy!
    respond_with @fragment, :location => post_path(@post)
  end
    
  private 
    def set_post
      @post = Post.find params[:post_id]
    end
      
    def set_fragment
      @fragment = Fragment.find params[:id]
    end
  
end