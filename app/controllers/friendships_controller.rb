class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:show, :edit, :update, :destroy]




  # POST /friendships
  # POST /friendships.json
  def create
    @plant = Plant.find(params[:plant])
    @friendship = @plant.friendships.build(:friend_id => params[:friend])
      if @friendship.save
        flash[:notice] = "added friend"
        redirect_to root_path
      else
        flash[:error] = "Unable to add friend."
        redirect_to root_path
      end
  end

  # PATCH/PUT /friendships/1
  # PATCH/PUT /friendships/1.json


  # DELETE /friendships/1
  # DELETE /friendships/1.json
  def destroy

    @plant = Plant.find(params[:plant])
    @friendship = @plant.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to root_path

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendship
      @friendship = Friendship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friendship_params
      params.require(:friendship).permit(:plant_id, :friend_id)
    end
end
