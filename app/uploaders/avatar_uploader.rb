class AvatarUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
   include CarrierWave::RMagick
   #include CarrierWave::MiniMagick

  include Cloudinary::CarrierWave
  
  version :thumb do
    process :crop
    resize_to_fill(100, 100)
  end

  version :large do
    resize_to_limit(600, 600)
  end

  def crop
    if model.crop_x.present?
      resize_to_limit(600, 600)
      manipulate! do |img|
        x = model.crop_x.to_i
        y = model.crop_y.to_i
        w = model.crop_w.to_i
        h = model.crop_h.to_i
        img.crop!(x, y, w, h)
      end
    end
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
   #def default_url
     #"/https://res.cloudinary.com/kinmaster/image/upload/v1534340321/" + [version_name, "wtpjcizuacj9biyp09ai.jpg"].compact.join('_')
   #end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end