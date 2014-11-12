atom_feed :language => 'en-US' do |feed|
  feed.title "smallbutton.com"
  feed.updated @posts.first.updated_at unless @posts.empty?

  @posts.each do |post|
    next if post.updated_at.blank?

    feed.entry( post ) do |entry|
      entry.url post_url(post)
      entry.title post.title
      entry.summary post.description
      entry.content :type => 'html' do
        entry.cdata!(post.content)
      end

      # the strftime is needed to work with Google Reader.
      entry.updated(post.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ"))

      entry.author do |author|
        author.name "Andreas Knöpfle"
      end
    end
  end
end
