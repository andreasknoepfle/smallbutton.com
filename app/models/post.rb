class Post
  include Mongoid::Document
  include Mongoid::Slug
  include Mongoid::Timestamps

  slug :title
  field :title, type: String
  field :description
  field :content, type: String
  field :published, type: Boolean
  field :published_at, type: DateTime

  validates :title, :description, :content, presence: true

  scope :published, -> { where(published: true) }

  mount_uploader :image, ImageUploader
end
