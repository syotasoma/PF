class Menu < ApplicationRecord
  has_one_attached :menu_image
  has_many :nices, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :customer
  belongs_to :genre
  validates :menu_introduction, presence: true
  def get_menu_image(width, height)
    unless menu_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      menu_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    menu_image.variant(resize_to_limit: [width, height]).processed
  end
def favorited_by?(customer)
    nices.exists?(customer_id: customer.id)
end
end
