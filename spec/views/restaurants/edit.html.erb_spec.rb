require 'rails_helper'

RSpec.describe "restaurants/edit", :type => :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :establishment => "MyString",
      :ownername => "MyString",
      :address_one => "MyString",
      :address_two => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => "MyString",
      :email => "MyString",
      :website => "MyString",
      :phone => "MyString",
      :restaurant_type => "MyString",
      :employees => "MyString",
      :revenue_type => "MyString",
      :marketing => "MyString",
      :marketing_budget_boolean => "MyString",
      :marketing_budget => "MyString",
      :social_media_boolean => "MyString",
      :social_media_types => "MyString",
      :other_social_media_types => "MyString",
      :online_ads_boolean => "MyString",
      :online_ads_types => "MyString",
      :other_online_ads_types => "MyString",
      :analytics_boolean => "MyString",
      :analytics_software => "MyString",
      :social_ads_boolean => "MyString",
      :why_social_ads => "MyString",
      :why_social_ads_other => "MyString",
      :ad_sites => "MyString",
      :other_ads_sites => "MyString"
    ))
  end

  it "renders the edit restaurant form" do
    render

    assert_select "form[action=?][method=?]", restaurant_path(@restaurant), "post" do

      assert_select "input#restaurant_establishment[name=?]", "restaurant[establishment]"

      assert_select "input#restaurant_ownername[name=?]", "restaurant[ownername]"

      assert_select "input#restaurant_address_one[name=?]", "restaurant[address_one]"

      assert_select "input#restaurant_address_two[name=?]", "restaurant[address_two]"

      assert_select "input#restaurant_city[name=?]", "restaurant[city]"

      assert_select "input#restaurant_state[name=?]", "restaurant[state]"

      assert_select "input#restaurant_zipcode[name=?]", "restaurant[zipcode]"

      assert_select "input#restaurant_email[name=?]", "restaurant[email]"

      assert_select "input#restaurant_website[name=?]", "restaurant[website]"

      assert_select "input#restaurant_phone[name=?]", "restaurant[phone]"

      assert_select "input#restaurant_restaurant_type[name=?]", "restaurant[restaurant_type]"

      assert_select "input#restaurant_employees[name=?]", "restaurant[employees]"

      assert_select "input#restaurant_revenue_type[name=?]", "restaurant[revenue_type]"

      assert_select "input#restaurant_marketing[name=?]", "restaurant[marketing]"

      assert_select "input#restaurant_marketing_budget_boolean[name=?]", "restaurant[marketing_budget_boolean]"

      assert_select "input#restaurant_marketing_budget[name=?]", "restaurant[marketing_budget]"

      assert_select "input#restaurant_social_media_boolean[name=?]", "restaurant[social_media_boolean]"

      assert_select "input#restaurant_social_media_types[name=?]", "restaurant[social_media_types]"

      assert_select "input#restaurant_other_social_media_types[name=?]", "restaurant[other_social_media_types]"

      assert_select "input#restaurant_online_ads_boolean[name=?]", "restaurant[online_ads_boolean]"

      assert_select "input#restaurant_online_ads_types[name=?]", "restaurant[online_ads_types]"

      assert_select "input#restaurant_other_online_ads_types[name=?]", "restaurant[other_online_ads_types]"

      assert_select "input#restaurant_analytics_boolean[name=?]", "restaurant[analytics_boolean]"

      assert_select "input#restaurant_analytics_software[name=?]", "restaurant[analytics_software]"

      assert_select "input#restaurant_social_ads_boolean[name=?]", "restaurant[social_ads_boolean]"

      assert_select "input#restaurant_why_social_ads[name=?]", "restaurant[why_social_ads]"

      assert_select "input#restaurant_why_social_ads_other[name=?]", "restaurant[why_social_ads_other]"

      assert_select "input#restaurant_ad_sites[name=?]", "restaurant[ad_sites]"

      assert_select "input#restaurant_other_ads_sites[name=?]", "restaurant[other_ads_sites]"
    end
  end
end
