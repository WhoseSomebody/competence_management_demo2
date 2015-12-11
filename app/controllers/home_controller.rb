class HomeController < ApplicationController
  skip_before_action :ensure_login
  def index
  end

  def about_us
  end
  def partners
  end
end
