# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  process :resize_to_fit => [400, 400]

  version :thumb do
    process :resize_to_fill => [100,100]
  end

  version :thumb do
    process :resize_to_fill => [200,200]
  end

  storage :file



end
