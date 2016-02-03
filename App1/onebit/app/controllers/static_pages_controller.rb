class StaticPagesController < ApplicationController

  def home
      if logged_in?
         @qr_code = current_user.qr_codes.build
     #@feed_items = current_user.feed.paginate(page: params[:page])
      end
  end

  def help
  end

  def about
  end

  def contact
      respond_to do |format|
      format.html { render "contact" }
      end
  end

  def default_request_format
      request.format = "json"
  end

end
