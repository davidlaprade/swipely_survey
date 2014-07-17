class CategoriesController < ApplicationController
  def index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:category_id)

      	# :coffeehouse, :fast_food, :fast_casual, :casual, :fine, :bar_or_pub, :nightclub)
    end

end
