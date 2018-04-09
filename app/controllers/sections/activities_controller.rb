class Sections::ActivitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_header
  before_action :set_section, except: [:show]
  before_action :set_activity, only: [:edit, :update, :destroy]

  def index
    @activities = @section.activities.where('nama_kegiatan like ?', "%#{params[:search]}%").paginate(per_page: 5, page: params[:page])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    @activity.section = @section
    if @activity.save
      flash[:notice] = 'Kegiatan berhasil ditambahkan!'
      redirect_to section_activities_path(@section)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      flash[:notice] = 'Kegiatan berhasil diupdate!'
      redirect_to section_activities_path(@section)
    else
      render 'edit'
    end
  end

  def destroy
    @activity.destroy
    flash[:notice] = 'Kegiatan berhasil dihapus!'
    redirect_to section_activities_path(@section)
  end

  private 
    def set_header
      @sections = Section.all
    end

    def set_section
      @section = Section.friendly.find(params[:section_id])
    end

    def set_activity
      @activity = Activity.friendly.find(params[:id])
    end
    
    def activity_params
      params.require(:activity).permit(:nama_kegiatan, :target_pelaksanaan, :realisasi_pelaksanaan, :status, :section_id)
    end
end
