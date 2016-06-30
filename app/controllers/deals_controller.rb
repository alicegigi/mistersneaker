class RestaurantsController < ApplicationController

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
  end

  def update
  end


end
