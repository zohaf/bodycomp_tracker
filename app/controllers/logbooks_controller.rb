class LogbooksController < ApplicationController
  before_action :check_for_login

  
  def index
    @logbooks = Logbook.all
  end

  def new
    @logbook = Logbook.new

  end
  

  def create
   
    logbook = Logbook.create logbook_params # create
    @current_user.logbooks << logbook       # associate
    redirect_back :fallback_location => root_path
  end

  private
  def logbook_params # strong params
    params.require(:logbook).permit(:entry_date, :phase, :overall_weight, :fat_percentage, :macros_overall)
  end
end

