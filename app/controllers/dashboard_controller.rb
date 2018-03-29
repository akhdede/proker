class DashboardController < ApplicationController
  def index
    @section = Section.all
  end
end
