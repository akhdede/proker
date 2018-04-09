class SectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_header
  before_action :set_section, only: [:edit, :update, :destroy]

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

  def edit
  end

  def update
    if @section.update(section_params)
      flash[:notice] = 'Bidang berhasil diperbarui!'
      redirect_to sections_path
    else
      render 'edit'
    end
  end

  def destroy
    if @section.destroy
      flash[:notice] = 'Bidang berhasil dihapus!'
      redirect_to sections_path
    end
  end

  private

    def set_header
      @section = Section.all
    end

    def set_section
      @section = Section.friendly.find(params[:id])
    end

    def section_params
      params.require(:section).permit(:nama_bidang)
    end
end
