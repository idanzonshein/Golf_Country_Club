class HolesController < ApplicationController
  def show
    @holes = Holes.find(params[:id])
  end


end