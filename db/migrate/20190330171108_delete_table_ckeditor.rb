class DeleteTableCkeditor < ActiveRecord::Migration[5.2]
  def up
    drop_table :ckeditor_assets
  end

end
