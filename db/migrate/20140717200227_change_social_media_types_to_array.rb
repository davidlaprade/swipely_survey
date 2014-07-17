class ChangeSocialMediaTypesToArray < ActiveRecord::Migration
  def change
  	change_column :social_media_types, :array
  end
end
