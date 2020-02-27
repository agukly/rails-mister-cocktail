class DosesController < ApplicationController

    def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def update
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.update(dose_params)
    redirect_to cocktail_path(@cocktail.id)
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
