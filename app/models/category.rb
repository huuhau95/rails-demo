class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  enum status: [:hide, :display]
end
