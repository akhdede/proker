class DashboardController < ApplicationController
  def index
    @bidang = Section.all
  end
end
