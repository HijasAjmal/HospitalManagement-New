class DepartmentsController < ApplicationController



  filter_access_to :all
  # display all departments
  def index
    @departments = Department.all
  end


  # create new department
  def create
    if Department.create(:department_name => params[:department_name])
      flash[:notice] = "Department created successfully...."
      redirect_to("/departments")
    else
      flash[:notice] = "Failed to create Department...."
      redirect_to("/departments")
    end
  end

  # delete department
  def delete
    if Department.destroy(params[:id])
      flash[:notice] = "Department deleted successfully...."
      redirect_to("/departments")
    else
      flash[:notice] = "Failed to delete Department...."
      redirect_to("/departments")
    end
  end
end
