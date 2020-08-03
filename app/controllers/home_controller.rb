class HomeController < ApplicationController
  def index
    puts Gossip.first.title
    puts Gossip.first.user.first_name
  end
end
