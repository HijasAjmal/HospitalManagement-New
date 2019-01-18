class DepartmentsController < ApplicationController



  filter_access_to :all
  # display all departments
  def index
    @departments = Department.all
  end


  # create new department
  def create
    @department = Department.new(:department_name => params[:department_name])
    if @department.save
      flash[:notice] = "Department created successfully...."
    else
      flash[:notice] = "Failed to create Department...."
    end
    redirect_to :controller => :departments
  end

  # delete department
  def delete###
    @department = Department.find(params[:id])
    if @department.destroy
      flash[:notice] = "Department deleted successfully...."
    else
      flash[:notice] = "Failed to delete Department...."
    end
    redirect_to :controller => :departments
  end
end
