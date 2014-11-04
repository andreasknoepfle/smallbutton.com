# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick


  version :thumb do
    process :resize_to_fill => [60,60]
  end

  version :bigger do
    process :resize_to_fill => [250,250]
  end

  storage :file



end
