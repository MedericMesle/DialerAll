class GrindsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @grinds = Grind.all
  end

end
