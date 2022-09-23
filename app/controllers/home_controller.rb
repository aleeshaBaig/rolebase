class HomeController < ApplicationController
   skip_before_action :authenticate_user!, :only => [:index]
  def index
  end
  rescue_from CanCan::AccessDenied do | exception |
    redirect_to root_url, alert: exception.message
  end
end
