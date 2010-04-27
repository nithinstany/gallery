module  GalleriesHelper
  def add_photo(form_builder)
  link_to_function "Add Image ", :id  => "add_photo" do |page|
    form_builder.fields_for :gallery_assets, GalleryAsset.new, :child_index => 'NEW_RECORD' do |photo_form|
      html = render(:partial => 'gallery_asset', :locals => { :f => photo_form })
      # content = escape_javascript(html)
      # page << "$('#{content}'.replace(/NEW_RECORD/g , new Date().getTime())).insertBefore('#add_site_detail')" if using jQuery
      page << "$('add_photo').insert({ after: '#{escape_javascript(html)}'.replace(/NEW_RECORD/g, new Date().getTime()) }); "
    end
  end
end

def delete_photo(form_builder)
  if form_builder.object.new_record?
    link_to_function("Remove this Image", "this.up('fieldset').remove()")
  else
    form_builder.hidden_field(:_delete) +
    link_to_function("Remove this Image", "this.up('fieldset').hide(); $(this).previous().value = '1'")
  end
end
end

