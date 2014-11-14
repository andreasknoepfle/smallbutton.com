class InformationsController < ApplicationController

  respond_to :html, only: :index
  respond_to :xml, only: :sitemap

  def sitemap
  end

  def index
  end


end
