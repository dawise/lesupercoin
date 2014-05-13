class AnnoncesController < ApplicationController
  def welcome
  end

  def index
    @annonces = Annonce.all
  end

  def show
    @annonce = Annonce.find(params[:id])
  end

  def new
    @annonce = Annonce.new
  end

  def create
    annonces_params = params.require(:annonce).permit(:title, :price, :author, :telephone, :picture_url)
    annonce = Annonce.create(annonces_params)

    redirect_to annonces_path
  end
end
