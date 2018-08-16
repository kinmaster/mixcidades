class Imagem < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
end
