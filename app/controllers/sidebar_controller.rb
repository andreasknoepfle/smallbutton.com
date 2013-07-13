class SidebarController < InheritedResources::Base
  respond_to :html
  actions :index
  layout false
  def index
    index!
  end
  def collection
     client = Octokit::Client.new(:login => "andreasknoepfle", :oauth_token => "7efadc02607bedb20e8d07b6820e7a9e4a73f6c1")
     client.user_events("andreasknoepfle")

  end
end