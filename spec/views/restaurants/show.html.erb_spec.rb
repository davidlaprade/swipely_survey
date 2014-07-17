require 'rails_helper'

RSpec.describe "restaurants/show", :type => :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :establishment => "Establishment",
      :ownername => "Ownername",
      :address_one => "Address One",
      :address_two => "Address Two",
      :city => "City",
      :state => "State",
      :zipcode => "Zipcode",
      :email => "Email",
      :website => "Website",
      :phone => "Phone",
      :restaurant_type => "Restaurant Type",
      :employees => "Employees",
      :revenue_type => "Revenue Type",
      :marketing => "Marketing",
      :marketing_budget_boolean => "Marketing Budget Boolean",
      :marketing_budget => "Marketing Budget",
      :social_media_boolean => "Social Media Boolean",
      :social_media_types => "Social Media Types",
      :other_social_media_types => "Other Social Media Types",
      :online_ads_boolean => "Online Ads Boolean",
      :online_ads_types => "Online Ads Types",
      :other_online_ads_types => "Other Online Ads Types",
      :analytics_boolean => "Analytics Boolean",
      :analytics_software => "Analytics Software",
      :social_ads_boolean => "Social Ads Boolean",
      :why_social_ads => "Why Social Ads",
      :why_social_ads_other => "Why Social Ads Other",
      :ad_sites => "Ad Sites",
      :other_ads_sites => "Other Ads Sites"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Establishment/)
    expect(rendered).to match(/Ownername/)
    expect(rendered).to match(/Address One/)
    expect(rendered).to match(/Address Two/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Restaurant Type/)
    expect(rendered).to match(/Employees/)
    expect(rendered).to match(/Revenue Type/)
    expect(rendered).to match(/Marketing/)
    expect(rendered).to match(/Marketing Budget Boolean/)
    expect(rendered).to match(/Marketing Budget/)
    expect(rendered).to match(/Social Media Boolean/)
    expect(rendered).to match(/Social Media Types/)
    expect(rendered).to match(/Other Social Media Types/)
    expect(rendered).to match(/Online Ads Boolean/)
    expect(rendered).to match(/Online Ads Types/)
    expect(rendered).to match(/Other Online Ads Types/)
    expect(rendered).to match(/Analytics Boolean/)
    expect(rendered).to match(/Analytics Software/)
    expect(rendered).to match(/Social Ads Boolean/)
    expect(rendered).to match(/Why Social Ads/)
    expect(rendered).to match(/Why Social Ads Other/)
    expect(rendered).to match(/Ad Sites/)
    expect(rendered).to match(/Other Ads Sites/)
  end
end
