class DepartmentsController < ApplicationController

  # display all departments
  def index
    @departments = Department.all
  end


  # create new department
  def create
    Department.create(:department_name => params[:department_name])
    redirect_to("/departments")
  end

  # delete department
  def delete
    Department.destroy(params[:id])
    redirect_to("/departments")
  end
end
