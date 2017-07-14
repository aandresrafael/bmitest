class HomeController < ApplicationController

  def index
  end

  def calculate_bmi
    redirect_to root_path and return if params[:user].nil?
    begin
      @bmi = params[:user][:weight].to_f / params[:user][:height].to_f ** 2
      @category = Category.get_category(@bmi).first
      current_user.update_attributes(bmi: @bmi, category_id: @category.id)
    rescue
      flash[:message] = "Invalid data"
    end

    render :index
  end

end
