class ReportsController < ApplicationController


  # upload new report
  def new
    @report = Report.new
    @user = params[:id]
  end

  # upload procedure
  def create
    @report = Report.create(params[:report])
    redirect_to :controller => :sessions
  end
end
