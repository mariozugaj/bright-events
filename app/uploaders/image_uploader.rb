class ImageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process tags: ['event_picture']

  version :thumb_list do
    resize_to_fit(236, 138)
  end

  version :thumb_card do
    resize_to_fit(400, 227)
  end

  version :show do
    process eager: true
    resize_to_fill(720, 360)
    cloudinary_transformation quality: 100
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def public_id
    Cloudinary::PreloadedFile.split_format(original_filename).first + "_" + Cloudinary::Utils.random_public_id[0,10]
  end
end
