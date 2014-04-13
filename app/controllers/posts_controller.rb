class PostsController < ApplicationController
  before_filter :authenticate, :except => [:index,:show]
  def index
    @big_header = true
  end
  def new
  end
  def edit
  end
end
