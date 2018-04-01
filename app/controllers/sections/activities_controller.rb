class Sections::ActivitiesController < ApplicationController
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
    @activity.save

    redirect_to section_activities_path(@section)
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    
    redirect_to section_activities_path(@section)
  end

  def destroy
    @activity.destroy

    redirect_to section_activities_path(@section)
  end

  private 

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
