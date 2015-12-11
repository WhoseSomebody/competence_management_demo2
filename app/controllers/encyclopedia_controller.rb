class EncyclopediaController < ApplicationController
  skip_before_action :ensure_login
  def index
  	@professions = Profession.all
  end
end
