class Fragment
  include Mongoid::Document
  embedded_in :post
  field :value, type: String
end
