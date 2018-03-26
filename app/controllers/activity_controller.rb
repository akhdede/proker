class ActivityController < ApplicationController

  def new
    @bidang = Section.friendly.find(params[:id])
    @kegiatan = @bidang.Activity.new
  end

  def create

  end
end
