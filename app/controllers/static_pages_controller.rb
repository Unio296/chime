class StaticPagesController < ApplicationController

  
  def home
    if logged_in?
      client = client_new
      @user = client.user
      @tweets = client.user_timeline(include_entities: true)
    end
  end
end
