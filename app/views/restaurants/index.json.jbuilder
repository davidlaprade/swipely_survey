json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :establishment, :ownername, :address_one, :address_two, :city, :state, :zipcode, :email, :website, :phone, :restaurant_type, :employees, :revenue_type, :marketing, :marketing_budget_boolean, :marketing_budget, :social_media_boolean, :social_media_types, :other_social_media_types, :online_ads_boolean, :online_ads_types, :other_online_ads_types, :analytics_boolean, :analytics_software, :social_ads_boolean, :why_social_ads, :why_social_ads_other, :ad_sites, :other_ads_sites
  json.url restaurant_url(restaurant, format: :json)
end
