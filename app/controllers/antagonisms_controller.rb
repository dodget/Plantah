class AntagonismsController < ApplicationController
  def create
    @plant = Plant.find(params[:plant])
    @antagonism = @plant.antagonisms.build(:antagonist_id => params[:antagonist])
    if @antagonism.save
      flash[:notice] = "added enemy"
      redirect_to request.referrer
    else
      flash[:error] = "Unable to add enemy."
      redirect_to request.referer
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @antagonism = @plant.antagonisms.find_by_antagonist_id(params[:antagonist_id])

    if @antagonism.destroy
      flash[:notice] = "Removed hatred."
      redirect_to request.referrer
    else
      flash[:error] = "Unable to remove hatred"
      redirect_to request.referrer
    end
  end
end
