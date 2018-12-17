# encoding: utf-8
#require 'carrierwave'

class CkeditorAttachmentFileUploader < Base
  #include Ckeditor::Backend::CarrierWave
  #include Cloudinary::CarrierWave

  # Include RMagick or ImageScience support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  # include CarrierWave::ImageScience

  # Choose what kind of storage to use for this uploader:
  #storage :file
  process :extract_dimensions
  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "/image/upload/#{model.data_file_name}"
  end


def extension_white_list
  Ckeditor.attachment_file_types
end
  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end
  #process :read_dimensions
  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  
end
