xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  xml.url do
    xml.loc root_url
    xml.priority 1.0
  end
  xml.url do
    xml.loc informations_url
    xml.priority 0.9
  end
  Post.published.each do |post|
    xml.url do
      xml.loc post_url(post)
      xml.lastmod post.updated_at.to_date.to_s('%Y-%m-%d')
      xml.priority 0.9
    end
  end
end
