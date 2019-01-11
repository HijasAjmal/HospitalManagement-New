class DepartmentsController < ApplicationController

  # display all departments
  def index
    @departments = Department.all
  end


  # create new department
  def create
    @department = Department.create
    @department.update_attributes(:department_name => params[:department_name])
    redirect_to("/departments")
  end

  # delete department
  def delete
    @department = Department.destroy(params[:id])
    redirect_to("/departments")
  end
end
