class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:show, :edit, :update]

  # POST /friendships
  # POST /friendships.json
  def create
    @plant = Plant.find(params[:plant])
    @friendship = @plant.friendships.build(:friend_id => params[:friend])
      if @friendship.save
        flash[:notice] = "added friend"
        redirect_to request.referrer
      else
        flash[:error] = "Unable to add friend."
        redirect_to request.referer
      end
  end


  # DELETE /friendships/1
  # DELETE /friendships/1.json
  def destroy

    @plant = Plant.find(params[:id])
    @friendship = @plant.friendships.find_by_friend_id(params[:friend_id])

    if @friendship.destroy
      flash[:notice] = "Removed friendship."
      redirect_to request.referrer
    else
      flash[:error] = "Unable to remove friend"
      redirect_to request.referrer
    end
  end


end
