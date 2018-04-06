class SectionsController < ApplicationController
  def index
    @sections = Section.all
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)

    if @section.save
      flash[:notice] = 'Bidang berhasil ditambahkan!'
      redirect_to sections_path
    else
      render 'index'
    end
  end

  private

  def section_params
    params.require(:section).permit(:nama_bidang)
  end
end
