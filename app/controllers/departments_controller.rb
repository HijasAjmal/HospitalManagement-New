class DepartmentsController < ApplicationController

  def index
    @departments = Department.all
  end

  def create
    @department = Department.create
    @department.update_attributes(:department_name => params[:department_name])
    redirect_to("/departments")
  end

  def delete
    @department = Department.destroy(params[:id])
    redirect_to("/departments")
  end

  def show
    @department = Department.find(params[:id])
    @rooms = Room.count(:all, :conditions => {:department_id => params[:id]})
  end
end
