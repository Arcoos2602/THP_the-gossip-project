class GossipController < ApplicationController
  def index
    @title = Gossip.find(params[:gossip_id]).title
    @content = Gossip.find(params[:gossip_id]).content
    @date = Gossip.find(params[:gossip_id]).created_at
    @user_id = Gossip.find(params[:gossip_id]).user
  end
end
