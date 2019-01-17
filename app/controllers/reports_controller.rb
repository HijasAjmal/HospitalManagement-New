class ReportsController < ApplicationController


  filter_access_to :all
  # upload new report
  def new
    @report = Report.new
    @user = params[:id]
  end

  # upload procedure
  def create
    if @report = Report.create(params[:report])
      flash[:notice] = "Report uploaded successfully..."
      redirect_to :controller => :sessions
    else
      flash[:notice] = "Failed to upload report..."
      redirect_to :controller => :sessions
    end
  end
end
