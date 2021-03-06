class Category < ActiveRecord::Base
  
  # Friendly id
  include FriendlyId
  friendly_id :description, use: :slugged

  has_many :ads

  validates_presence_of :description

  scope :order_by_description, -> {order(:description)}
end
