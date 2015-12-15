class EncyclopediaController < ApplicationController
  skip_before_action :admin_login, :ensure_login
  def index
  	@professions = Profession.all
  end
end
