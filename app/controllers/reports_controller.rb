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
    else
      flash[:notice] = "Failed to upload report..."
    end
    redirect_to :controller => :sessions
  end
end
