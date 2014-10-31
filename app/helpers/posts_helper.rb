module PostsHelper
  def pageless(total_pages, url=nil, container=nil)
    opts = {
      :totalPages => total_pages,
      :url        => url,
      :loaderMsg  => '',
      :loaderImage => image_path("load.gif")
    }

    container && opts[:container] ||= container

    javascript_tag("$('#cd-timeline').pageless(#{opts.to_json});")
  end
end
