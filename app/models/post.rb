class Post < ActiveRecord::Base
  attr_accessible :content, :title
  acts_as_taggable
  acts_as_taggable_on :icons
end
