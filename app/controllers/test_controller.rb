class TestController < ApplicationController
    def index
    end
  rescue_from CanCan::AccessDenied do | exception |
    redirect_to root_url, alert: exception.message
  end
end
