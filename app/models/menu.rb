class Menu < ApplicationRecord
  has_many :nices, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :customer
  validates :menu_introduction, presence: true
end
