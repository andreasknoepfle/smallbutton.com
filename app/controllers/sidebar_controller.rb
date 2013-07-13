class SidebarController < InheritedResources::Base
  respond_to :html
  actions :index
  layout false
  def index
    index!
  end
  def collection
     client = Octokit::Client.new(:login => Settings.apis.github.user, :oauth_token => Settings.apis.github.token)
     client.user_events("andreasknoepfle")

  end
end