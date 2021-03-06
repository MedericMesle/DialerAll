class GrindsController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @grinds = Grind.all
  end

  def show
    if (params[:id])
      @grind = Grind.find(params[:id])
    else
      redirect_to grind_path
    end
  end

  def new
    @grind = Grind.new
  end

  def create
    @grind = Grind.new(grind_params)
    @grind.save

    redirect_to grind_path(@grind)
  end

  def destroy
    @grind = Grind.find(params[:id])
    @grind.destroy

    redirect_to grind_path(@grind)
  end

  private
  def grind_params
    params.require(:grind).permit(:grinder_name, :grinder_setting, :coffee_name, :extraction_type, :comments, :grind_name)
  end


end
