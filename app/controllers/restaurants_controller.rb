class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]


  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
    # see the restaurant model for how these variables work
    @restaurant_types = Restaurant.restaurant_types
    @revenue_types = Restaurant.revenue_types
    @yes_no = Restaurant.yes_no
    @socialmedia = Restaurant.socialmedia
    @social_ads_reasons = Restaurant.social_ads_reasons
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
  
    # raise restaurant_params.inspect
    @restaurant = Restaurant.new(restaurant_params)

    # gets checkbox output, converts it to string format
    @other_ads = params[:online_ads_types]
    @restaurant.online_ads_types = checkbox_values(@other_ads)
    @social_media = params[:social_media_types]
    @restaurant.social_media_types = checkbox_values(@social_media)
    @ad_sites = params[:ad_sites]
    @restaurant.ad_sites = checkbox_values(@ad_sites)





    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Stores the results of checkbox fields as a string
    def checkbox_values(hash)
      @string = ""
      hash.each do |key, value|
        if hash[key] == "1"
          @string = @string + key + ", "
        end
      end
      return @string
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:establishment, :ownername, :address_one, :address_two, :city, 
        :state, :zipcode, :email, :website, :phone, :restaurant_type, :employees, :revenue_type, :marketing, 
        :marketing_budget_boolean, :marketing_budget, :social_media_boolean, 
        :online_ads_boolean, :online_ads_types,  
        :analytics_boolean, :analytics_software, :social_ads_boolean, :why_social_ads, :why_social_ads_other, 
        :other_ads_sites, :ad_sites, :social_media_types, :other_social_media_types, :other_online_ads_types)
    end

end
