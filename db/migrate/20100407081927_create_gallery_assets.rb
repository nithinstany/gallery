class CreateGalleryAssets < ActiveRecord::Migration
  def self.up
    create_table :gallery_assets do |t|
             t.string :asset_file_name
      t.string :asset_content_type
      t.integer :asset_file_size
      t.integer :gallery_id
      t.timestamps
      t.timestamps
    end
  end

  def self.down
    drop_table :gallery_assets
  end
end

