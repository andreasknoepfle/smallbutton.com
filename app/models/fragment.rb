class Fragment
  include Mongoid::Document
  include Mongoid::Orderable
  
  embedded_in :post
  orderable
  
  field :type, type: String
  field :caption, type: String
  field :value, type: String
  field :meta, type: String
end
