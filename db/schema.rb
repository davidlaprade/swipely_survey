# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140717154812) do

  create_table "restaurants", force: true do |t|
    t.string   "establishment"
    t.string   "ownername"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "email"
    t.string   "website"
    t.string   "phone"
    t.string   "restaurant_type"
    t.string   "employees"
    t.string   "revenue_type"
    t.string   "marketing"
    t.string   "marketing_budget_boolean"
    t.string   "marketing_budget"
    t.string   "social_media_boolean"
    t.string   "social_media_types"
    t.string   "other_social_media_types"
    t.string   "online_ads_boolean"
    t.string   "online_ads_types"
    t.string   "other_online_ads_types"
    t.string   "analytics_boolean"
    t.string   "analytics_software"
    t.string   "social_ads_boolean"
    t.string   "why_social_ads"
    t.string   "why_social_ads_other"
    t.string   "ad_sites"
    t.string   "other_ads_sites"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
