class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 160 }
  validate :picture_size


  private

def picture_size
  if picture_size > 5.megabytes
    errors.add(:picture, "Должно быть менее 5MB")
  end
end

end

