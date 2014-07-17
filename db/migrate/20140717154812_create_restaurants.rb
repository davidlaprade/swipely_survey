class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :establishment
      t.string :ownername
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :email
      t.string :website
      t.string :phone
      t.string :restaurant_type
      t.string :employees
      t.string :revenue_type
      t.string :marketing
      t.string :marketing_budget_boolean
      t.string :marketing_budget
      t.string :social_media_boolean
      t.string :social_media_types
      t.string :other_social_media_types
      t.string :online_ads_boolean
      t.string :online_ads_types
      t.string :other_online_ads_types
      t.string :analytics_boolean
      t.string :analytics_software
      t.string :social_ads_boolean
      t.string :why_social_ads
      t.string :why_social_ads_other
      t.string :ad_sites
      t.string :other_ads_sites

      t.timestamps
    end
  end
end
