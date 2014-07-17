require 'rails_helper'

RSpec.describe "restaurants/index", :type => :view do
  before(:each) do
    assign(:restaurants, [
      Restaurant.create!(
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
      ),
      Restaurant.create!(
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
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    assert_select "tr>td", :text => "Establishment".to_s, :count => 2
    assert_select "tr>td", :text => "Ownername".to_s, :count => 2
    assert_select "tr>td", :text => "Address One".to_s, :count => 2
    assert_select "tr>td", :text => "Address Two".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Restaurant Type".to_s, :count => 2
    assert_select "tr>td", :text => "Employees".to_s, :count => 2
    assert_select "tr>td", :text => "Revenue Type".to_s, :count => 2
    assert_select "tr>td", :text => "Marketing".to_s, :count => 2
    assert_select "tr>td", :text => "Marketing Budget Boolean".to_s, :count => 2
    assert_select "tr>td", :text => "Marketing Budget".to_s, :count => 2
    assert_select "tr>td", :text => "Social Media Boolean".to_s, :count => 2
    assert_select "tr>td", :text => "Social Media Types".to_s, :count => 2
    assert_select "tr>td", :text => "Other Social Media Types".to_s, :count => 2
    assert_select "tr>td", :text => "Online Ads Boolean".to_s, :count => 2
    assert_select "tr>td", :text => "Online Ads Types".to_s, :count => 2
    assert_select "tr>td", :text => "Other Online Ads Types".to_s, :count => 2
    assert_select "tr>td", :text => "Analytics Boolean".to_s, :count => 2
    assert_select "tr>td", :text => "Analytics Software".to_s, :count => 2
    assert_select "tr>td", :text => "Social Ads Boolean".to_s, :count => 2
    assert_select "tr>td", :text => "Why Social Ads".to_s, :count => 2
    assert_select "tr>td", :text => "Why Social Ads Other".to_s, :count => 2
    assert_select "tr>td", :text => "Ad Sites".to_s, :count => 2
    assert_select "tr>td", :text => "Other Ads Sites".to_s, :count => 2
  end
end
