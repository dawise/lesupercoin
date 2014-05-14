class ListingsController < ApplicationController

  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :whitelist_param, only: [:create, :update]

  def welcome
  end

  def index
    @listings = Listing.all
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def create
    listing = Listing.create(@listings_params)

    redirect_to listings_path
  end

  def edit
  end

  def update
    @listing.update!(@listings_params)

    flash[:info] = "Vous avez modifié l'annonce de #{@listing.author}"

    redirect_to listings_path
  end

  def destroy
    @listing.destroy
    flash[:info] = "Vous avez supprimé l'annonce de #{@listing.author}"
    redirect_to listings_path
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def whitelist_param
    @listings_params = params.require(:listing).permit(:title, :price, :author, :telephone, :picture_url)
  end
end