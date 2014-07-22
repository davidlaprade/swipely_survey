class Restaurant < ActiveRecord::Base
# has_and_belongs_to_many :categories

partial_updates = false

# this was required here: http://api.rubyonrails.org/classes/ActiveModel/Serialization.html
include ActiveModel::Serialization

# to get the checkboxes working
serialize :social_media_types, Hash
serialize :online_ads_types, Hash
serialize :ad_sites, Hash

# you need "self." at the begining of the method name to call it on the class Restaurant itself, not an instance of the class
def self.restaurant_types
  ["Coffeehouse", "Fast Food", "Fast Casual", "Casual", "Fine", "Bar or Pub", "Nightclub"]
end

def self.revenue_types
  ["Less Than $1 Million", "Greater Than $1 Million", "Greater Than $2 Million", "Other"]
end

def self.yes_no
  ["Yes", "No"]
end

def self.socialmedia
  ["Facebook", "Twitter", "Instagram", "Other"]
end

def self.social_ads_reasons
  ["Promote brand awareness and bring in new customers", "Engage with new and existing customers", "Reward existing customers and promote deals", "All of the above", "N/A", "Other"]
end

end
