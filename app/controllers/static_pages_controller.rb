class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: [:top]

  def top
  end

  def show
  end
end

private

# beforeフィルター

# ログイン済みのユーザーか確認します。
def logged_in_user
  if user_signed_in?    
    flash[:success] = "ログインしました"
    redirect_to static_pages_show_path
  end
end
