class PetsController < ApplicationController
  before_action :set_pet, only: [:show]

  def index
    if params[:search]
      @pets = Pet.joins(:owner).where("owners.name LIKE ?", "%#{params[:search]}%")
      @message = "There are no pets with that owner" if @pets.empty?
    else
      @pets = Pet.all
    end
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      render :show
    else
      render :new
    end
  end

  def show
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :description, :owner_id)
  end

  def set_pet
    @pet = Pet.find_by(id: params[:id])
  end
end