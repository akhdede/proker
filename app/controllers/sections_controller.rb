class SectionsController < ApplicationController

  def show
    @section = Section.friendly.find(params[:id])
  end

end
