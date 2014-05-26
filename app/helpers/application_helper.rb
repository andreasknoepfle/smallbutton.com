module ApplicationHelper
  def editing_help
    content_tag :p, :class => "editing_help" do
      link_to "Editing Help" , "http://stackoverflow.com/editing-help", :target => "_blank"
    end
  end
end
