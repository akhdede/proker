class SectionController < ApplicationController
  def index
    @bidang = Section.all
  end

  def show
    @bidang = Section.friendly.find(params[:id])
    @kegiatan = Activity.all
  end

end
