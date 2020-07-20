class ClonePagesController < ApplicationController
  def top_page
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def search_page
  end

  def my_page
  end
  
  def upload_page
  end
  
end
