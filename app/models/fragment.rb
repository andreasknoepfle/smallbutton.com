class Fragment
  include Mongoid::Document
  embedded_in :post
  field :type, type: String
  field :caption, type: String
  field :value, type: String
  field :meta, type: String
end
