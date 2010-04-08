class GalleryAsset < ActiveRecord::Base
  belongs_to :gallery
  has_attached_file :asset , :styles => { :thumb=> "130x130>", :small  => "75x75>",:large => "750x750>" }
end

