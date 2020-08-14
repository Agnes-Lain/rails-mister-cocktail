class DosesController < ApplicationController
  def create
    @dose = Dose.new(description: params[:dose][:description], ingredient_id: params[:dose][:ingredient_id], cocktail_id: params[:cocktail_id])
    @dose.save

    redirect_to cocktail_path(Cocktail.find(params[:cocktail_id]))
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private
  def dose_params
    params[:dose].require(:dose).permit(:description, :ingredient_id)
  end
end
