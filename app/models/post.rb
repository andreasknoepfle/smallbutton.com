class Post
  include Mongoid::Document
  include Mongoid::Slug
  include Mongoid::Timestamps
  
  slug :title
  field :title, type: String
  field :description, type: String
  field :published, type: Boolean
  field :published_at, type: DateTime
  
  embeds_many :fragments
  mount_uploader :image, ImageUploader
end
