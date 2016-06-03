class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:show, :edit, :update]

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


  # DELETE /friendships/1
  # DELETE /friendships/1.json
  def destroy
    @plant = Plant.find(params[:id])
    @friendship = @plant.friendships.find_by_friend_id(params[:friend_id])
    #Friendship.where(plant_id: params[:id], friend_id: params[:friend_id]).destroy
    if @friendship.destroy
      flash[:notice] = "Removed friendship."
      redirect_to root_path
    else
      flash[:error] = "Unable to remove friend"
      redirect_to root_path
    end
  end


end
