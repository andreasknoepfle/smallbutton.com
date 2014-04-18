class Post
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :published, type: Boolean
  field :published_at, type: DateTime
  embeds_many :fragments
end
