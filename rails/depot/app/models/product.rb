class Product < ApplicationRecord
  validates :title, :uniqueness => true
  validates :title, :description, :presence => true
  validates :image_url, :format => {:with => %r{\.(gif|jpg|png)$}i, :multiline => true, :message => 'must be a URL for GIF, JPG or PNG image.'}
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
end
