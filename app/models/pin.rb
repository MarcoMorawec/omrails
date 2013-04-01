class Pin < ActiveRecord::Base
  attr_accessible :description, :image

  validates :description, presence: true, :length => { :minimum => 5 }
  validates :user_id, presence: true
  validates_attachmet :image, presence: true,
  								content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  								size: { less_than: 5.megabytes }

  belongs_to :user
  has_attached_file :image

end