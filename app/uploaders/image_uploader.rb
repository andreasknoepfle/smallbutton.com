# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  process :resize_to_fit => [400, 400]

  version :thumb do
    process :resize_to_fill => [100,100]
  end
 
  storage :grid_fs
 
  def store_dir
    "#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  

end
