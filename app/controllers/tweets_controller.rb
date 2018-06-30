class TweetsController < ApplicationController
    before_action :login_required, only: [:timeline, :tweet]
    include Common
    require 'twitter'

    #ツイート
    def tweet
        client = client_new
        client.update(params[:text])
        
        flash[:success] = "Tweet Success!!"
        redirect_to root_path
    end

    #タイムライン
    def timeline
        client = client_new
        @user = client.user
        @tweets = client.home_timeline(include_entities: true)
    end
    
end
