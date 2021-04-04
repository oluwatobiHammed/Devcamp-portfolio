class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end
  # scope :angular_portfolios_items, -> {where(subtitle:'Angular')}
  scope :ruby_on_rails_portfolios_items, -> {where(subtitle:'Ruby on rails')}
end
