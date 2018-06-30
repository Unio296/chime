class SessionsController < ApplicationController
  
  #sessionを作成　ログイン cookieを生成
  def create
    auth = request.env['omniauth.auth']
    user = User.find_or_create_from_auth(auth)
    session[:user_id] = user.id

    #tweet機能用token
    session[:oauth_token] = auth['credentials']['token']
    session[:oauth_token_secret] = auth['credentials']['secret']

    redirect_to root_path
  end

  #sessionを削除　ログアウト cookieを破棄
  def destroy
    reset_session
    redirect_to root_path
  end
end
