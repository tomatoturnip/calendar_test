class Sermon < ActiveRecord::Base
  validates :speaker, presence: true
  validates :subject, presence: true
  validates :day, presence: true

  mount_uploader :avatar, AvatarUploader

end
