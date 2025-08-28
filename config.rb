# encoding: utf-8
# frozen_string_literal: true

activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
page '/google*.html', layout: false

config[:title] = 'smallbutton.com - Andreas Knöpfle'
config[:url] = 'https://smallbutton.com'
config[:author] = '@andreasknoepfle'
config[:description] = 'Yet another code monkeys website.'

helpers do
  def title
    [config[:title], current_page.data.title].compact.join(' - ')
  end

  def description
    current_page.data.description || config[:description]
  end

  def url(path)
    "#{config[:url]}/#{path}"
  end
end
