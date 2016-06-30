class DealsController < ApplicationController

  #devise methods
  skip_before_action :authenticate_user!

  helper_method :resource_name, :resource, :devise_mapping
  def resource_name
    :user
  end
  def resource
    @resource ||= User.new
  end
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  #end of devise methods

  def index
    @deals = Deal.all
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def new
  end

  def create
    @deal = Deal.find(params[:id])
    @deal.save
  end

  def edit
    @deal = Deal.find(params[:id])
  end

  def update
    @deal = Deal.find(params[:id])
    @deal.update(params[:deal])
  end

  def destroy
    @deal = Deal.find(params[:id])
    @deal.destroy
  end

  private

  def deal_params

    params_array = [
      :title,
      :short_description,
      :full_description,
      :original_price,
      :discounted_price,
      :discount,
      :picture,
      :category
    ]
    params.require(:deal).permit(:params_array)
  end

end
