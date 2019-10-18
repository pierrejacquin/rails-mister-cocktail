class DosesController < ApplicationController
  before_action :set_dose, only: [:show]
  before_action :set_cocktail, only: [:new, :create ]

  def index
    @doses = Dose.all
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save
    redirect_to cocktails_path(@cocktail)
  end

  def show
    set_dose
  end

  def destroy
    set_dose
    @dose.destroy
    redirect_to cocktails_path(@cocktail)
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end


end
