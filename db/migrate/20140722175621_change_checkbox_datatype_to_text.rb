class ChangeCheckboxDatatypeToText < ActiveRecord::Migration
  def change
  	# this was suggested by http://stackoverflow.com/questions/6694432/using-rails-serialize-to-save-hash-to-database
  	change_column :restaurants, :social_media_types,  :text
  	change_column :restaurants, :online_ads_types,  :text
  	change_column :restaurants, :ad_sites,  :text
  end
end
