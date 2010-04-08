class Gallery < ActiveRecord::Base
  has_many :gallery_assets ,:dependent => :destroy
  validates_presence_of :name
  accepts_nested_attributes_for :gallery_assets, :allow_destroy => true
end

