class DashboardController < ApplicationController
  before_action :set_header

  def index
    @section = Section.all
  end

  private

    def set_header
      @sections = Section.all
    end
end
