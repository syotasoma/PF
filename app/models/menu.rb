class Menu < ApplicationRecord
  has_many :nices, dependent: :destroy
  belongs_to :customer
  
  validates :menu_introduction, presence: true
end
