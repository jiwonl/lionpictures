class Movieinfo < ActiveRecord::Base
    mount_uploader :image, ImageUploader
end